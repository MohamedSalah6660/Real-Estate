<?php
 
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Project;
use App\Compound;
use Validator;
use App\Rules\CheckExistsProject;
 
class ProjectController extends Controller
{
    
   public function all_projects(){

   	$all_projects = Project::withCount('compound')->orderBy('id', 'desc')->paginate(2);

   	return response(['all_projects'=>$all_projects]);

   }


   public function projects($id){


   	$projects = Project::find($id)->compound()->paginate(1);

   	return  !empty($projects) ? response(['status'=>true , compact('projects')]): response(['status'=>false]);	


   }


   public function add_compound(Request $request){


 $rules =[

      'name'=>'required',
      'project_id'=>['required', 'numeric', new CheckExistsProject],
      'location'=>'required',
    ];


    $validate = Validator::make($request->all(),$rules);

	if ($validate->fails()) 
    	{
      
      return response(['status'=>false, 'messages' => $validate->messages()]);


    }else {
    	
    	$addcompound = new Compound;
    	$addcompound->project_id = $request->input('project_id');
    	$addcompound->name = $request->input('name');
    	$addcompound->location = $request->input('location');
    	$addcompound->save();

    	return response(['status'=>true , 'message'=>'Compound is Added']);
    }

   }
   
}