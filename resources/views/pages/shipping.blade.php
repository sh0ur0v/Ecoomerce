@extends('master')
@section('content')

<div class="columns-container">
    <div class="container" id="columns">

<div class="breadcrumb clearfix">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe">&nbsp;</span>
            <span class="navigation_page">Checkout</span>
        </div>

<h2 class="page-heading">
            <span class="page-heading-title2">Checkout</span>
        </h2>
 <div class="page-content checkout-page">
<h3 class="checkout-sep">3. Shipping Information</h3>
            <div class="box-border">
                <ul>
                     {!! Form::open(['url' => '/save-shipping', 'method'=>'post']) !!}               
                    <li class="row">
                        
                        <div class="col-sm-6">
                            
                            <label for="first_name_1" class="required">First Name</label>
                            <input class="input form-control" type="text" name="first_name" id="first_name_1">

                        </div><!--/ [col] -->

                        <div class="col-sm-6">
                            
                            <label for="last_name_1" class="required">Last Name</label>
                            <input class="input form-control" type="text" name="last_name" id="last_name_1">

                        </div><!--/ [col] -->

                    </li><!--/ .row -->

                    <li class="row">
                        
                        <div class="col-sm-6">
                            
                            <label for="company_name_1">Company Name</label>
                            <input class="input form-control" type="text" name="company_name" id="company_name_1">

                        </div><!--/ [col] -->

                        <div class="col-sm-6">
                            
                            <label for="email_address_1" class="required">Email Address</label>
                            <input class="input form-control" type="text" name="email_address" id="email_address_1">

                        </div><!--/ [col] -->

                    </li><!--/ .row -->

                    <li class="row">

                        <div class="col-xs-12">

                            <label for="address_1" class="required">Address</label>
                            <input class="input form-control" type="text" name="address" id="address_1">

                        </div><!--/ [col] -->

                    </li><!--/ .row -->

                    <li class="row">
                        
                          <div class="col-sm-6">

                            <label for="telephone_1" class="required">Mobile</label>
                            <input class="input form-control" type="text" name="mobile_number" id="telephone_1">

                        </div><!--/ [col] -->

                        <div class="col-sm-6">
                            
                            <label for="city_1" class="required">City</label>
                            <input class="input form-control" type="text" name="city" id="city_1">

                        </div><!--/ [col] -->

                       

                    </li><!--/ .row -->

                    <li class="row">

                        <div class="col-sm-6">

                            <label for="postal_code_1" class="required">Zip/Postal Code</label>
                            <input class="input form-control" type="text" name="zip_code" id="postal_code_1">

                        </div><!--/ [col] -->

                        <div class="col-sm-6">

                            <label class="required">Country</label>
                            <select class="input form-control" name="country">
                                    
                                    <option value="USA">USA</option>
                                    <option value="Canada">Bangladesh</option>
                                    <option value="Australia">Australia</option>
                                    <option value="Austria">Austria</option>
                                    <option value="Argentina">Argentina</option>
                                    <option value="Canada">Canada</option>

                                </select>

                            </div>

                        </div><!--/ [col] -->

                    </li><!--/ .row -->

                    <li class="row">

                      

                       

                    </li><!--/ .row -->

                </ul>
                <button type="submit" class="button">Continue</button>
            </div>

 {!! Form::close() !!}
 </div>
    </div>       

@endsection