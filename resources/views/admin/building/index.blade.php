@extends('admin.layouts.layout')
@section('title')

Building panel

@endsection



@section('header')







@endsection

@section('content')

<div class="content-header">
  <h1>
All Building  </h1>
  <ol class="breadcrumb">
    <li><a href="{{ url('/adminpanel') }}"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active"><a href="{{ url('/adminpanel/buildings') }}">Building</a></li>
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
                
                            <th>#</th>
                
                            <th>Number 	</th>
                
                            <th>Image</th>
                            <th>Num.floors</th>
                            <th>Num.units</th>
                            <th>Compound</th>
                            <th>Project</th>
                
                            <th width="280px">Action</th>
                
                        </tr>
                        </thead>
                        <tbody>

                
                    @foreach ($buildings as $building)
                
                    <tr>
                
                        <td>{{ ++$i }}</td>
                        <td>{{ $building->number }}</td>
                        <td><img src="{{asset('storage/image/'. $building->img )}}" style="width: 50% ; height: 30px" ></td>  
                        <td>{{ $building->floorsnum }}</td>
                        <td>{{ $building->unitsnum }}</td>
                        <td>{{ $building->compound->name}}</td>
                        <td>{{ $building->compound->project->name}}</td>
                           <td>
                
                
                            <a class="btn btn-primary" href="{{ route('building.edit',$building->id) }}">Edit</a>
                
                            
                
                          
                
              {!! Form::open(['method' => 'DELETE','route' => ['building.destroy', $building->id],'style'=>'display:inline']) !!}
                



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
{!!$buildings->render()!!}
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

