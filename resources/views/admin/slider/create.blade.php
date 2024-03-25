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
                        <h4>Create Slider</h4> 
                    </div>
                    <div class="card-body">
                        <form action="{{route('admin.slider.store')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="banner">Banner</label>
                                <input type="file" class="form-control" name="banner">
                            </div>
                            <div class="form-group">
                                <label for="Type">Type</label>
                                <input type="text" class="form-control" name="type" value="{{old('type')}}">
                            </div>
                            <div class="form-group">
                                <label for="Title">Title</label>
                                <input type="text" class="form-control" name="title" value="{{old('title')}}">
                            </div>
                            <div class="form-group">
                                <label for="starting_price">Starting Price</label>
                                <input type="text" class="form-control" name="starting_price" value="{{old('starting_price')}}"> 
                            </div>
                            <div class="form-group">
                                <label for="Button URL">Button URL</label>
                                <input type="text" class="form-control" name="btn_url" value="{{old('btn_url')}}">
                            </div>
                            <div class="form-group">
                                <label for="serial">Serial</label>
                                <input type="text" class="form-control" name="serial" value="{{old('serial')}}">
                            </div>
                            <div class="form-group">
                                <label for="Status">Status</label>
                                <select name="status" id="status" class="form-control" name="status">
                                    <option value="1">active</option>
                                    <option value="2">Inactive</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </form>
                    </div> 
                </div>
            </div> 
        </div> 
    </div>
</section> 
@endsection