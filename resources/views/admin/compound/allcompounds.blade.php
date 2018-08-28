@extends('admin.layouts.layout')
@section('title')

All Compounds
@endsection



@section('header')

@endsection

@section('content')

<div class="content-header">
  <h1>
    All compounds
  </h1>
  <ol class="breadcrumb">
    <li><a href="{{ url('/adminpanel') }}"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active"><a href="{{url('/adminpanel/compounds') }}">Compound</a></li>
  </ol>
  </div>

<div class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Our compounds</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                    
  @if ($message = Session::get('success'))

    <div class="alert alert-success">

        <p>{{ $message }}</p>

    </div>

@endif
              

                 
                
                    <table  id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                
                            <th>No</th>
                
                            <th>Name</th>
                
                            <th>Location</th>
                
                            <th>Image</th>
                          <th> Project</th>
                
                            <th width="280px">Action</th>
                
                        </tr>
                        </thead>
                        <tbody>


                
              @foreach ($compounds as $compound)
          
              <tr>
          
                  <td>{{ ++$i }}</td>
          
                  <td>{{ $compound->name }}</td>
          
                  <td>{{ $compound->location }}</td>
                         <td><img src="{{asset('/storage/image/' . $compound->img)}}" style="width: 50% ; height: 25px"></td>

                   <td>     
                  {{$compound->project->name}}                               
                  </td>
                               <td>
          
          
                      <a class="btn btn-primary" href="{{ route('compound.edit',$compound->id) }}">Edit</a>
          
                      
          
                    
          
                      {!! Form::open(['method' => 'DELETE','route' => ['compound.destroy', $compound->id],'style'=>'display:inline']) !!}
          
                      {!! Form::submit('Delete', ['class' => 'btn btn-danger', ('onclick="return myFunction();"')]) !!}
          
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
{!!$compounds->render()!!}

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


