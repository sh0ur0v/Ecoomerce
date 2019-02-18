
@extends('admin.admin_master')
@section('content')


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Simple Invoice Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<!--<div class="page-header">
    <h1>Simple Invoice <small>Bootstrap template, demonstrating a simple invoice.</small></h1>
</div>-->

<!-- Simple Invoice - START -->
<div class="container">
    <div class="row-fluid">
        <div class="col-xs-12">
            <div class="text-center">
                <i class="fa fa-search-plus pull-left icon"></i>
                <h2>Invoice for purchase #: 00{{$order_info_by_id->order_id}}</h2>
            </div>
            <hr>
            <div class="row-fluid">
                <div class="col-xs-12 col-md-3 col-lg-3 pull-left">
                    <div class="panel panel-default height">
                        <div class="panel-heading"><h2>Customer Info:</h2></div>
                        <div class="panel-body">
                            {{$order_info_by_id->first_name.''.$order_info_by_id->last_name}}<br>
                            {{$order_info_by_id->address}}<br>
                            {{$order_info_by_id->city}},{{$order_info_by_id->zip_code}}<br>
                            {{$order_info_by_id->mobile}}
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="panel panel-default height">
                       
                        <div class="panel-body">
                            
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="panel panel-default height">
                        <div class="panel-heading"></div>
                        <div class="panel-body">
                            
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3 pull-left">
                    <div class="panel panel-default height">
                        <div class="panel-heading"><h2>Shipping Address</h2></div>
                        <div class="panel-body">
                            {{$shipping_info_by_id->first_name.''.$shipping_info_by_id->last_name}}<br>
                            {{$shipping_info_by_id->address}}<br>
                            {{$shipping_info_by_id->city}},{{$shipping_info_by_id->zip_code}}<br>
                            {{$shipping_info_by_id->mobile}}
                        </div>
                    </div>
                </div>
                
                
                
            </div>
        </div>
        <div class="col-xs-12">
            <div class="col-xs-12 col-md-3 col-lg-3 pull-left">
                    <div class="panel panel-default height">
                        <div class="panel-heading"><h2>Payment Type:</h2></div>
                        <div class="panel-body">
                           {{$order_info_by_id->payment_type}} 
                        </div>
                    </div>
                </div>
            
        </div>
    </div>
    <div class="row-fluid">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="text-center"><strong>Order summary</strong></h3>
                </div>
                <div class="panel-body" >
                    <div class="table-responsive" >
                        <table class="table table-condensed" >
                            <thead>
                                <tr>
                                    <td><strong>Item Name</strong></td>
                                    <td class="text-center"><strong>Item Price</strong></td>
                                    <td class="text-center"><strong>Item Quantity</strong></td>
                                    <td class="text-right"><strong>Total</strong></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    @foreach($order_details as $v_order)
                                    <td>{{$v_order->product_name}}</td>
                                    <td class="text-center">{{$v_order->product_price}}</td>
                                    <td class="text-center">{{$v_order->product_sales_quantity}}</td>
                                    <td class="text-right">{{$order_info_by_id->order_total}}</td>
                                    @endforeach
                                </tr>
                                
                                <tr>
                                    <td class="highrow"></td>
                                    <td class="highrow"></td>
                                    <td class="highrow text-center"><strong>Total</strong></td>
                                    <td class="highrow text-right">{{$order_info_by_id->order_total}}</td>
                                </tr>
<!--                                <tr>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow text-center"><strong>Shipping</strong></td>
                                    <td class="emptyrow text-right">$50</td>
                                </tr>
                                <tr>
                                    <td class="emptyrow"><i class="fa fa-barcode iconbig"></i></td>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow text-center"><strong>Total</strong></td>
                                    <td class="emptyrow text-right">$978.00</td>
                                </tr>-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .invoice{
        max-width:800px;
    }
.height {
    min-height: 100px;
}


.icon {
    font-size: 47px;
    color: #5CB85C;
}

.iconbig {
    font-size: 77px;
    color: #5CB85C;
}

.table > tbody > tr > .emptyrow {
    border-top: none;
    
}

.table > thead > tr > .emptyrow {
    border-bottom: none;
   
}

.table > tbody > tr > .highrow {
    border-top: 3px solid;
}
</style>

<!-- Simple Invoice - END -->

</div>

</body>
</html>

@endsection