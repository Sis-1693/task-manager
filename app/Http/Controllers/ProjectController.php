<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;
use Illuminate\Support\Facades\Auth;

class ProjectController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string'
        ]);

        $project = Project::create([
            'title' => $request->title,
            'description' => $request->description,
            'user_id' => Auth::id() // logged in user id
        ]);

        return response()->json([
            'message' => 'Project created successfully',
            'data' => $project
        ], 201);
    }

    public function index()
    {
        $projects = Project::with('tasks')->get();

        return response()->json([
            'data' => $projects
        ]);
    }
}