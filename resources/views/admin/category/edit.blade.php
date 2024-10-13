@extends('admin.layouts.master')

@section('content')
<!-- Main Content --> 
<section class="section">
    <div class="section-header">
        <h1>Category</h1> 
    </div>

    <div class="section-body"> 
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Update Category</h4> 
                    </div>
                    <div class="card-body"> 
                        <form action="{{route('admin.category.update', $category->id)}}" method="POST">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <label for="Icon">Icon</label>
                                <div>
                                    <button class="btn btn-primary" data-selected-class="btn-danger" data-unselected-class="btn-info" name="icon" data-icon="{{$category->icon}}" role="iconpicker"></button>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Icon">Name</label>
                                <input type="text" class="form-control" name="name" value="{{$category->name}}">
                            </div>
                            <div class="form-group">
                                <label for="Status">Status</label>
                                <select name="status" id="status" class="form-control" name="status">
                                <option {{$category->status == 1 ? 'selected' : ''}} value="1">active</option>
                                    <option {{$category->status == 2 ? 'selected' : ''}} value="2">Inactive</option>
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