<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreTaskRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules()
    {
        return [
            'project_id' => 'required|exists:projects,id',
            'user_id'    => 'required|exists:users,id',
            'title'      => 'required|string',
            'priority'   => 'required|in:LOW,MEDIUM,HIGH',
            'due_date'   => 'required|date'
        ];
    }
}
