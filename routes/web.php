<?php

 

Route::get('/', 'HomeController@index')->name('home');

#verify Email
Route::get('register/verify/{token}','Auth\RegisterController@verify');

Route::group(['middleware'=> ['web' , 'admin']] , function(){
  
 
    #main admin
    Route::get('/adminpanel', 'AdminController@index')->name('adminpanel');
    #users
   
   

   Route::resource('adminpanel/users','UsersController');

#projects Routes



Route::resource('adminpanel/projects','ProjectController');









#route building

Route::get('/adminpanel/buildings',['as'=>'building.index','uses'=>'BuildingController@index']);//,'middleware' => ['permission:building-list|building-create|building-edit|building-delete']]);

Route::get('/adminpanel/buildings/create',['as'=>'building.create','uses'=>'BuildingController@create' ]);//,'middleware' => ['permission:building-create']]);

Route::post('/adminpanel/buildings/create',['as'=>'building.store','uses'=>'BuildingController@store']);//,'middleware' => ['permission:building-create']


Route::get('/adminpanel/buildings/{id}/edit',['as'=>'building.edit','uses'=>'BuildingController@edit']);//,'middleware' => ['permission:building-edit']]);

Route::patch('/adminpanel/buildings/{id}',['as'=>'building.update','uses'=>'BuildingController@update']);//,'middleware' => ['permission:building-edit']

Route::delete('/adminpanel/buildings/{id}/delete',['as'=>'building.destroy','uses'=>'BuildingController@destroy']);//,'middleware' => ['permission:building-delete']








#route compound

Route::get('/adminpanel/compounds',['as'=>'compound.index','uses'=>'CompoundController@index']);//,'middleware' => ['permission:compound-list|compound-create|compound-edit|compound-delete']]);

Route::get('/adminpanel/compounds/create',['as'=>'compound.create','uses'=>'CompoundController@create' ]);//,'middleware' => ['permission:compound-create']]);

Route::post('/adminpanel/compounds/create',['as'=>'compound.store','uses'=>'CompoundController@store']);//,'middleware' => ['permission:compound-create']


Route::get('/adminpanel/compounds/{id}/edit',['as'=>'compound.edit','uses'=>'CompoundController@edit']);//,'middleware' => ['permission:compound-edit']]);

Route::patch('/adminpanel/compounds/{id}',['as'=>'compound.update','uses'=>'CompoundController@update']);//,'middleware' => ['permission:compound-edit']

Route::delete('/adminpanel/compounds/{id}/delete',['as'=>'compound.destroy','uses'=>'CompoundController@destroy']);//,'middleware' => ['permission:compound-delete']







#route Unit

Route::get('/adminpanel/units',['as'=>'unit.index','uses'=>'UnitController@index']);//,'middleware' => ['permission:unit-list|unit-create|unit-edit|unit-delete']]);

Route::get('/adminpanel/units/create',['as'=>'unit.create','uses'=>'UnitController@create' ]);//,'middleware' => ['permission:unit-create']]);

Route::post('/adminpanel/units/create',['as'=>'unit.store','uses'=>'UnitController@store']);//,'middleware' => ['permission:unit-create']


Route::get('/adminpanel/units/{id}/edit',['as'=>'unit.edit','uses'=>'UnitController@edit']);//,'middleware' => ['permission:unit-edit']]);

Route::patch('/adminpanel/units/{id}',['as'=>'unit.update','uses'=>'UnitController@update']);//,'middleware' => ['permission:unit-edit']
Route::delete('/adminpanel/units/{id}/delete',['as'=>'unit.destroy','uses'=>'UnitController@destroy']);//,'middleware' => ['permission:unit-delete']


Route::get('/adminpanel/units/{image_id}/deleteimage', 'UnitController@deleteimage')->name('deleteimage');







#route  book

Route::get('/adminpanel/book',['as'=>'book.index','uses'=>'BookController@bookdetails']);//,'middleware' => ['permission:unit-list|unit-create|unit-edit|unit-delete']]);


#rout contact in AdminPanel

Route::get('/adminpanel/contact',['as'=>'contact.index','uses'=>'ContactController@index']);//,'middleware' => ['permission:unit-list|unit-create|unit-edit|unit-delete']]);
Route::delete('/adminpanel/contact/{id}/delete',['as'=>'contact.destroy','uses'=>'ContactController@destroy']);//,'middleware' => ['permission:unit-delete']


});


#about

Route::get('/about', 'AboutController@index')->name('about');

#contact To User
Route::get('/contact', 'ContactController@create')->name('contact');

Route::post('contact',['as'=>'contact.store','uses'=>'ContactController@store']);//,'middleware' => ['permission:unit-create']




Auth::routes();

Route::get('home', 'HomeController@index')->name('home');


#search
Route::get('queries',['as'=>'queries.index','uses'=>'HomeController@search']);





#profile
Route::get('/profile', 'ProfileController@index')->name('profile');





Route::get('showproject/{project_name}', 'ProjectController@showDetailsPro')->name('showproject');
Route::get('showcompound/{compound_name}', 'CompoundController@showDetailsCom')->name('showcompound');
Route::get('/showunits/{compound_name}/{building_number}/{unit_number}', 'UnitController@showDetailsUnit')->name('showunits');




#book unit
Route::get('book/{compound_name}/{building_number}/{unit_number}/{unit_id}','BookController@bookunit')->name('book');

Route::get('/profile', 'BookController@index')->name('profile');

Route::get('bookdelete/{book_id}', 'BookController@deletebook')->name('bookdelete');

