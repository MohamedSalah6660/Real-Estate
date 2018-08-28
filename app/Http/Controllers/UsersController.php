<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use DB;
use Hash;
use Redirect;
use Datatables;
use App\Http\Requests\AddUserRequestAdmin;

class UsersController extends Controller
{
    public function index(User $user){
        $users = User::all();

        return view('admin.user.index', compact('users'));
    }

 
    public function create()

    {

       return view('admin.user.add');

    }


    /**

     * Store a newly created resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @return \Illuminate\Http\Response

     */

    public function store(Request $request)

    {

        $this->validate($request, [

            'name' => 'required',

            'email' => 'required|email|unique:users,email',

            'password' => 'required|same:confirm-password',


        ]);


        $input = $request->all();

    $input['password'] = Hash::make($input['password']);


        $user = User::create($input);


        return redirect()->route('users.index')->with('success','User created successfully');

    }

    #Edit Users


    public function edit($id){
        
        $user = User::find($id);
        return view('admin.user.edit' , compact('user' ));
    }

    public function update(Request $request, $id)

    {

        $this->validate($request, [

            'name' => 'required',

            'email' => 'required|email|unique:users,email,'.$id,

            'password' => 'same:confirm-password',
            

          

        ]);


        $input = $request->all();

        if(!empty($input['password'])){ 

            $input['password'] = Hash::make($input['password']);

        }else{

            $input = array_except($input,array('password'));    

        }


        $user = User::find($id);

        $user->update($input);
       
        return redirect()->route('users.index')

                        ->with('success','User updated successfully');
        }
       


    


    #Show Users

    public function show($id)

    {

        $user = User::find($id);

        return view('admin.user.index',compact('user'));

    }

   

    #DElete user
     
    public function destroy($id){


  $user = User::find($id);

        $user->delete();
            return redirect('/adminpanel/users')->withFlashMessage('user deleted succefully');

   

   } 
}
