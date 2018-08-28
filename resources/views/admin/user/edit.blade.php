@extends('admin.layouts.layout')
@section('title')

Edit user
{{ $user->name }}
@endsection
@section('header')



        




@endsection


@section('content')


<div class="content-header">
        <h1>
            Edit user
           
        </h1>
        <ol class="breadcrumb">
          <li><a href="{{ url('/adminpanel') }}"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="{{ url('/adminpanel/users') }}">User panel</a></li>
          <li class="active"><a href="{{ url('/adminpanel/users/edit') }}"> Edit user </a></li>
        </ol>
        </div>

{{-- section table --}}
        <div class="content">
                <div class="row">
                  <div class="col-xs-12">
                    <div class="box">
                      <div class="box-header">
                        <h3 class="box-title">
                          Edit user
                           </h3>
                      </div>
                      <!-- /.box-header -->
                      <div class="box-body">

                   
                        {!! Form::model($user, ['method' => 'PATCH','route' => ['users.update', $user->id]]) !!}
                        

                            @include('admin.user.form')

                           


                      </div>
                    </div>
                </div>
            </div>
        </div>





                   
                  
                          
                  
                      {!! Form::close() !!}

                    </div>
                </div>
            </div>
        </div>
    </div>

                  





 <!-- /.content -->
 @endsection


@section('footer')





 @endsection