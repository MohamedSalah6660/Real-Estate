@extends('admin.layouts.layout')
@section('title')

userPanel

@endsection



@section('header')



<link rel="stylesheet" href="{{ asset('admin/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">




@endsection

@section('content')

<div class="content-header">
  <h1>
All Users  </h1>
  <ol class="breadcrumb">
    <li><a href="{{ url('/adminpanel') }}"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active"><a href="{{ url('/adminpanel/users') }}">Tables</a></li>
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
                <table id="data" class="table table-bordered table-hover">
                    <thead>
                      
                    <tr>
                      <th>id</th>
                      <th>User name</th>
                      <th>Email</th>
                      <th>Status</th>
                      <th>control</th>
                    </tr>
                    </thead>
 

@foreach($users as $user)


                    <tfoot>
                        <tr>
                            <td>{{$user->id}}</td>
                            <td>{{$user->name}}</th>
                            <td>{{$user->email}}</td>

                    <td>
                        @if($user->admin == 0 )
                        <p>User</p>
                        @else
                        <p>Admin</p>
                        @endif
</td>

                       

                        <td>
                
                           
                
                
                    <a class="btn btn-primary" href="{{action('UsersController@edit', $user['id'])}}">Edit</a>
                
                            
                
                          
  
    {!! Form::open(['method' => 'DELETE','url' => 'adminpanel/users/'. $user->id,'style'=>'display:inline', ('onclick="return myFunction();"')]) !!}
      
                  {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
      
                  {!! Form::close() !!}
      
                  
                
                        </td>
                          </tr>
                    </tfoot>
                    @endforeach

                    <script>
  function myFunction() {
      if(!confirm("Are You Sure to delete this"))
      event.preventDefault();
  }
 </script>
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



    <!-- DataTables -->
    <script src="{{ asset('admin/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>


   
@endsection


