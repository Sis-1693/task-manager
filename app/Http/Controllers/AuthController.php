<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $user = User::where('email', $request->email)->first();

        // अगर user database में नहीं है तो create कर दो
        if(!$user){
            $user = User::create([
                'name' => 'Admin',
                'email' => $request->email,
                'password' => Hash::make($request->password)
            ]);
        }

        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json(['message' => 'Invalid'], 401);
        }

        $user = Auth::user();
        $token = $user->createToken('api')->plainTextToken;

        return response()->json([
            'user' => $user,
            'token' => $token
        ]);
    }
}