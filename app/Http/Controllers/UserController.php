<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Book;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{

    public function login()
    {
        return view('auth.login');
    }
    public function register()
    {
        return view('auth.register');
    }

    public function registerUser(Request $request)
    {
        // dd($request);
        $validator = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $newUser = new User();
        $newUser->first_name = $request->first_name;
        $newUser->last_name = $request->last_name;
        $newUser->email = $request->email;
        $newUser->password = Hash::make($request->password);

        if ($newUser->save()) {
            return response()->json($newUser, 200);
        }
    }


    function loginUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response([
                'message' => ['These credentials do not match our records.']
            ], 404);
        }

        $token = $user->createToken('my-app-token')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token,
            'time' => date('H:i:s')
        ];

        Session::put('user', $response);

        return response($response, 200);
    }

    public function viewBooks()
    {
        if (!Session::has('user')) {
            return redirect()->route('userLogin');
        }
        $allBooks = Book::all();
        return view('home', compact('allBooks'));
    }

    public function logout()
    {
        Session::flush();
        return redirect()->route('userLogin');
    }
    public function updateToken(Request $request)
    {
        $data = array(
            'personal_access_tokens' => "App\Models\User",
            'tokenable_id' => $request->id,
            'name' => "my-app-token",
            'token' => $this->unique_code(9)
        );

        DB::table('personal_access_tokens')->insert($data);
        return response($data, 200);

    }
    function unique_code($limit)
    {
        return substr(base_convert(sha1(uniqid(mt_rand())), 16, 36), 0, $limit);
    }
}
