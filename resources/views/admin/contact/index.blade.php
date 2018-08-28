@extends('admin.layouts.layout')

@section('header')


@endsection


@section('content')


<section class="content-header">
      <h1>
All Messages       
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{ url('/adminpanel')}}">
        <i class="fa fa-dashboard"></i> 
        Home</a>
        </li>
        <li class="active"><a href="{{ url('/adminpanel/users')}}">Tables</a></li>
      </ol>
    </section>

<div class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="bonameuser  x-header">
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
                  <th>nameuser</th>
                  <th>Email(s)</th>
                  <th>Message</th>
                  <th>control</th>

                </tr>
                </thead>
                <tbody>


    @foreach($contacts as $contact)


                <tr>
                    <td>{{$contact->id}}</td>
                    <td>{{ $contact->name}}</td>
                    <td>{{ $contact->email}}</td>
                    <td>{{ $contact->message}}</td>
                  
                    <td>
                    {!! Form::open(['method' => 'DELETE','route' => ['contact.destroy', $contact->id],'style'=>'display:inline']) !!} 

                    {!! Form::submit('Delete', ['class' => 'btn btn-danger', ('onclick="return myFunction();"')]) !!}

                                  
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
              {!!$contacts->render()!!}
            </div>
            <!-- /.box-body -->
          </div>

        </div>
       </div>
    </div>






@endsection









@section('footer')

@endsection