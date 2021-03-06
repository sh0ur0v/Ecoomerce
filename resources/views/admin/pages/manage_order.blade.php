@extends('admin.admin_master')
@section('content')

<!-- BEGIN PAGE HEADER-->   
<div class="row-fluid">
    <div class="span12">
        <!-- BEGIN THEME CUSTOMIZER-->
        <div id="theme-change" class="hidden-phone">
            <i class="icon-cogs"></i>
            <span class="settings">
                <span class="text">Theme Color:</span>
                <span class="colors">
                    <span class="color-default" data-style="default"></span>
                    <span class="color-green" data-style="green"></span>
                    <span class="color-gray" data-style="gray"></span>
                    <span class="color-purple" data-style="purple"></span>
                    <span class="color-red" data-style="red"></span>
                </span>
            </span>
        </div>
        <!-- END THEME CUSTOMIZER-->
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title">
            Manage Products
        </h3>
        <ul class="breadcrumb">
            <li>
                <a href="#">Home</a>
                <span class="divider">/</span>
            </li>
            <li>
                <a href="#">Data Table</a>
                <span class="divider">/</span>
            </li>
            <li class="active">
                Editable Table
            </li>
            <li class="pull-right search-wrap">
                <form action="search_result.html" class="hidden-phone">
                    <div class="input-append search-input-area">
                        <input class="" id="appendedInputButton" type="text">
                        <button class="btn" type="button"><i class="icon-search"></i> </button>
                    </div>
                </form>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>
<!-- END PAGE HEADER-->

<?php
$massage = Session::get('massage');
if (isset($massage)) {
    ?>
    <div class="alert alert-block alert-success fade in">
        <button data-dismiss="alert" class="close" type="button">×</button>
        <h4 class="alert-heading">Success!</h4>
        <p>
            <?php echo $massage; ?>

        </p>
    </div>
    <?php
}
?>
<!-- BEGIN EDITABLE TABLE widget-->
<div class="row-fluid">
    <div class="span12">

        <!-- BEGIN EXAMPLE TABLE widget-->
        <div class="widget purple">
            <div class="widget-title">
                <h4><i class="icon-reorder"></i> All Order</h4>
                <span class="tools">
                    <a href="javascript:;" class="icon-chevron-down"></a>
                    <a href="javascript:;" class="icon-remove"></a>
                </span>
            </div>
            <div class="widget-body">
                <div>


                    <div class="clearfix">
<!--                        <div class="btn-group">
                            <a href="{{URL::to('/add-product')}}" class="btn green">
                                Add New <i class="icon-plus"></i>
                            </a>
                        </div>-->
                        <div class="btn-group pull-right">
                            <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="icon-angle-down"></i>
                            </button>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="#">Print</a></li>
                                <li><a href="#">Save as PDF</a></li>
                                <li><a href="#">Export to Excel</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Customer Name</th>
                                <th>Order Total</th>
                                

                                <th>Order Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 0 ?>
                            @foreach($order_info as $all_v)
                            <tr class="">
                                <td>{{++$i}}</td>
                                <td>{{$all_v->first_name}}
                                {{$all_v->last_name}}
                                </td>
                                <td>{{$all_v->order_total}}</td>
                                <td>{{$all_v->order_status}}</td>

                                  <td>
                                    
                                    <a class="btn btn-info" href="{{ URL::to('view-invoice/'.$all_v->order_id) }}">

                                        <i class="halflings-icon icon-pencil"></i>  
                                    </a>
<!--                                    <a class="btn btn-danger" href="{{URL::to('delete-product/'.$all_v->id)}}" onclick="return checkDelete()">
                                        <i class="halflings-icon icon-trash"></i> 
                                    </a>-->
                                </td>
                                
                                </td>
                               
                            </tr>
                            
                          
                            @endforeach



                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END EXAMPLE TABLE widget-->
    </div>
</div>

<!-- END EDITABLE TABLE widget-->

@endsection