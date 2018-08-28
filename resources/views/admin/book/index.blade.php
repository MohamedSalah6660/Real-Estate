@extends('admin.layouts.layout')
@section('title')

Book panel

@endsection
@section('header')




@endsection
@section('content')


<div class="content-header">
<h1>
All Books</h1>
<ol class="breadcrumb">
  <li><a href="{{ url('/adminpanel') }}"><i class="fa fa-dashboard"></i>Home</a></li>
  <li class="active"><a href="{{ url('/adminpanel/book') }}">book</a></li>
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
        <th>User Name</th>
        <th>User of Email</th>
        <th>Unit Number</th>
        <th>Unit Price</th>
        <th>building Number</th>
        <th>Project Name</th>
        <th>Compound Name</th>
        <th>Action</th>

      </tr>
    </thead>
    <tbody>
    @foreach ($book_unit as $key => $book_unit)
      <tr>
        <td>{{ $book_unit->name }}</td>
        <td>{{ $book_unit->email }}</td>

        <td style="text-align: center ; cursor:pointer"><a href="{{ route('showunits',array('compound_name'=> $book_unit->compound_name,'building_number'=>$book_unit->building_num ,'unit_number'=> $book_unit->unit_num ))}}">{{ $book_unit->unit_num }} </a></td>
        <td style="text-align: center;">{{ $book_unit->unit_price }}</</td>
        <td style="text-align: center;">{{ $book_unit->building_num }}</</td>
        <td style="text-align: center;">{{ $book_unit->project_name }}</</td>
        <td style="text-align: center;">{{ $book_unit->compound_name }}</</td>

        <td>   
            
          <a class="btn btn-danger" href="{{route('bookdelete',array('book_id'=>$book_unit->book_id)) }}">Delete</a>   


        </td>
      </tr>
    @endforeach

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
