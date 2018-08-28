@extends('admin.layouts.layout')
@section('title')

Project panel

@endsection
 


@section('header')







@endsection

@section('content')

<div class="content-header">
  <h1>
All Projects  </h1>
  <ol class="breadcrumb">
    <li><a href="{{ url('/adminpanel') }}"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active"><a href="{{ url('/adminpanel/projects') }}">Tables</a></li>
  </ol>
  </div>

<div class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                    
	@if ($message = Session::get('success'))

    <div class="alert alert-success">

        <p>{{ $message }}</p>

    </div>

@endif
              

                 
                
<table id="example2" class="table table-bordered table-hover">
<thead>                
                        <tr>
                
                            <th>No</th>
                
                            <th>Name</th>
                
                            <th>Governate</th>
                
                            <th>City</th>

                            <th>Image</th>
                
                            <th width="280px">Action</th>
                
                        </tr>
                        </thead>
                         <tbody>
                
                    @foreach ($project as $key => $project)
                
                    <tr>
                
                        <td>{{ ++$i }}</td>
                
                        <td>{{ $project->name }}</td>
                
                        <td>{{ $project->governate }}</td>
                        <td>{{ $project->city }}</td>
        <td><img src="{{asset('/storage/image/' . $project->img)}}" style="width: 50% ; height: 25px"></td>

                        <td>
                
                           
                
                
                    <a class="btn btn-primary" href="{{action('ProjectController@edit', $project['id'])}}">Edit</a>
                
                            
                
                          
  
    {!! Form::open(['method' => 'DELETE','url' => 'adminpanel/projects/'. $project->id,'style'=>'display:inline', ('onclick="return myFunction();"')]) !!}
      
                  {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
      
                  {!! Form::close() !!}
      
                  
                
                        </td>
                
                    </tr>
                
                    @endforeach


<script>
  function myFunction() {
      if(!confirm("Are You Sure to delete this"))
      event.preventDefault();
  }
 </script>



                   </tbody> 


                  </table>
            </div>
            
            
            <!-- /.box-body -->
          </div>
          
          
          
          </div>
        <!-- /.col -->
      </div>
      
      
      <!-- /.row -->

      
    </div>
    <!-- /.content -->
@endsection

@section('footer')



@endsection