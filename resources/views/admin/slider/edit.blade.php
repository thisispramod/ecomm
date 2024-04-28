@extends('admin.layouts.master')

@section('content')
<!-- Main Content --> 
<section class="section">
    <div class="section-header">
        <h1>Slider</h1> 
    </div>

    <div class="section-body"> 
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Update Slider</h4> 
                    </div>
                    <div class="card-body">
                        <form action="{{route('admin.slider.update', $slider->id)}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <label for="banner">Preview</label><br>
                                <img width="150" height="100" src="{{asset($slider->banner)}}" alt="">
                            </div>
                            <div class="form-group">
                                <label for="banner">Banner</label>
                                <input type="file" class="form-control" name="banner">
                            </div>
                            <div class="form-group">
                                <label for="Type">Type</label>
                                <input type="text" class="form-control" name="type" value="{{$slider->type}}">
                            </div>
                            <div class="form-group">
                                <label for="Title">Title</label>
                                <input type="text" class="form-control" name="title" value="{{$slider->title}}">
                            </div>
                            <div class="form-group">
                                <label for="starting_price">Starting Price</label>
                                <input type="text" class="form-control" name="starting_price" value="{{$slider->starting_price}}"> 
                            </div>
                            <div class="form-group">
                                <label for="Button URL">Button URL</label>
                                <input type="text" class="form-control" name="btn_url" value="{{$slider->btn_url}}">
                            </div>
                            <div class="form-group">
                                <label for="serial">Serial</label>
                                <input type="text" class="form-control" name="serial" value="{{$slider->serial}}">
                            </div>
                            <div class="form-group">
                                <label for="Status">Status</label>
                                <select name="status" id="status" class="form-control" name="status">
                                    <option {{$slider->status == 1 ? 'selected' : ''}} value="1">active</option>
                                    <option {{$slider->status == 2 ? 'selected' : ''}} value="2">Inactive</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </form>
                    </div> 
                </div>
            </div> 
        </div> 
    </div>
</section> 
@endsection