@extends('admin.layouts.layout')
@section('title')

Units panel

@endsection



@section('header')







@endsection

@section('content')

<div class="content-header">
  <h1>
All Units  </h1>
  <ol class="breadcrumb">
    <li><a href="{{ url('/adminpanel') }}"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active"><a href="{{ url('/adminpanel/units') }}">Units</a></li>
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
              

                 
          
              <table id="example2" class="table table-bordered ">
              <thead>

                  <tr>
          
                      <th>#</th>
          
                      <th>Number</th>
                      <th>Size</th>
                      <th>Price</th>
                      <th>Floor</th>
                      <th>Image</th>
                      
                      <th>Building</th>
                      <th>project</th>
                   


                      <th width="280px">Action</th>
          
                  </tr>
                  </thead>
                  <tbody>
          
              @foreach ($units as $unit)
          
              <tr>
             
                  <td>{{ ++$i }}</td>
                  <td>{{ $unit->number }}</td>
                  <td>{{ $unit->size }}</td>
                  <td>{{ $unit->price }} <span>LE</span></td>
                  <td>{{ $unit->floor }}</td>
        <td><img src="{{asset('/storage/image/' . $unit->img)}}" style="width: 50% ; height: 25px"></td>
                  <td>{{ $unit->building_id }}</td>
                  <td>{{ $unit->building->compound->project->name }}</td>
                 
                     <td>
        

            <a class="btn btn-primary" href="{{ route('unit.edit',$unit->id) }}">Edit</a>

            {!! Form::open(['method' => 'DELETE','route' => ['unit.destroy', $unit->id],'style'=>'display:inline',]) !!}

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
{!!$units->render()!!}
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


