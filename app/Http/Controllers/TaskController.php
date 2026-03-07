<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Task;
use Carbon\Carbon;

class TaskController extends Controller
{
    public function store(Request $request)
    {

        $task = Task::create([
            'project_id' => $request->project_id,
            'user_id' => $request->user_id,
            'title' => $request->title,
            'priority' => $request->priority,
            'due_date' => $request->due_date,
            'status' => 'PENDING'
        ]);

        return response()->json([
            'message' => 'Task created successfully',
            'data' => $task
        ], 201);
    }
    public function myTasks()
    {
        $tasks = \App\Models\Task::with('project')
            ->where('user_id', auth()->id())
            ->get();

        return response()->json([
            'data' => $tasks
        ]);
    }
    public function updateStatus(Request $request, $id)
    {
        $task = Task::findOrFail($id);

        // Rule: Overdue cannot go back to IN_PROGRESS
        if ($task->status == 'OVERDUE' && $request->status == 'IN_PROGRESS') {
            return response()->json(['message' => 'Cannot move overdue to WIP'], 403);
        }

        // Rule: Only admin can close overdue
        if ($task->status == 'OVERDUE' && $request->status == 'DONE') {
            if (auth()->user()->role != 'admin') {
                return response()->json(['Only admin can close overdue'], 403);
            }
        }

        $task->status = $request->status;
        $task->save();

        return response()->json(['message' => 'Status updated']);
    }
    public function projectTasks($id)
    {
        $user = auth()->user();

        $query = Task::where('project_id', $id)->with('user');

        if ($user->role === 'user') {
            $query->where('user_id', $user->id);
        }

        $tasks = $query->get();

        return response()->json([
            'data' => $tasks
        ]);
    }
    public function update(Request $request, $id)
    {
        $task = Task::findOrFail($id);

        $task->update([
            'title' => $request->title
        ]);

        return response()->json([
            'message' => 'Task updated successfully',
            'data' => $task
        ]);
    }
}
