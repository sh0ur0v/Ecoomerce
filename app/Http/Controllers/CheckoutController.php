<?php // 
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Cart;
use Session;

use App\Http\Requests;

use Illuminate\Support\Facades\Redirect;

class CheckoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function checkout()
    {
        $checkout_page= view('pages.checkout');
        return view('master')
                ->with('content', $checkout_page);
    }
    
    public function save_customer(Request $request)
    {
        $data = array();
        $data['first_name'] = $request->first_name;
        $data['last_name'] = $request->last_name;
        $data['company_name'] = $request->company_name;
        $data['email_address'] = $request->email_address;
        $data['password'] = $request->password;
        $data['mobile'] = $request->mobile_number;
        $data['address'] = $request->address;
        $data['city'] = $request->city;
        $data['country'] = $request->country;
        $data['zip_code'] = $request->zip_code;
        
        $customer_id = DB::table('tbl_customer')->insertGetId($data);
        Session::put('customer_id',$customer_id);
        return Redirect::to('/shipping-address');
  
    }
    
    public function save_customer_check(Request $request)
    {
        $email_address = $request->email_address;
        $password = ($request->password);
        $customer = DB::table('tbl_customer')
                    ->select('*')
                    ->where('email_address', $email_address)
                    ->where('password', $password)
                    ->first();
        if($customer)
        {
            Session::put('id', $customer->id);
            Session::put('first_name', $customer->first_name);
            Session::put('last_name', $customer->last_name);
            return Redirect::to('/payment');
        }
        else
        {
            Session::put('exception','User Id or Password Invaild');
            return Redirect::to('/checkout');
        }
    }
    
     public function shipping_address()
    {
        $shipping_address= view('pages.shipping');
        return view('master')
                ->with('content', $shipping_address);
    }
    
    public function save_shipping(Request $request)
    {
        $data = array();
        $data['first_name'] = $request->first_name;
        $data['last_name'] = $request->last_name;
        $data['company_name'] = $request->company_name;
        $data['email_address'] = $request->email_address;
        
        $data['mobile'] = $request->mobile_number;
        $data['address'] = $request->address;
        $data['city'] = $request->city;
       
        $data['zip_code'] = $request->zip_code;
        $data['country'] = $request->country;
        
        
        $shipping_id = DB::table('tbl_shipping2')->insertGetId($data);
        Session::put('shipping_id',$shipping_id);
        return Redirect::to('/payment');  
    }
    
   public function payment()
   {
        $confirm_order= view('pages.confirm_order');
        return view('master')
                ->with('content', $confirm_order);
   } 
    
   public function place_order(Request $request)
   {
      $payment_type=$request->payment_type;
      
      $data['payment_type']=$payment_type;
      $payment_id = DB::table('tbl_payment')->insertGetId($data);
   
      
      
      $odata=array();
      $odata['customer_id']=Session::get('customer_id');
      $odata['shipping_id']=Session::get('shipping_id');
      $odata['payment_id']=$payment_id;
      $order_total=str_replace(",","",Cart::total());
      $odata['order_total']= $order_total;
      $order_id = DB::table('tbl_order')->insertGetId($odata);
      
     
      
      $oddata=array();
      $contents=Cart::content();
      foreach($contents as $v_contents)
      {
        $oddata['order_id']=$order_id;  
        $oddata['product_id']=$v_contents->id;  
        $oddata['product_name']=$v_contents->name;  
        $oddata['product_price']=$v_contents->price;  
        $oddata['product_sales_quantity']=$v_contents->qty;  
        DB::table('tbl_order_details')->insert($oddata); 
      }
      
    if($payment_type=='paypal')
    {
        return view('pages.htmlWebsiteStandradPayment');
    }
    if($payment_type=='cash_on_delivery')
    {
        Cart::destroy();
       return Redirect::to('order-successfull'); 
    }
    if($payment_type=='bkash')
    {
       return view('pages.bkash');
    }
      
   }
   
//   Public function order_successfull()
//   {
//       $successfull_oder= view('pages.successfull_oder');
//        return view('master')
//                ->with('content', $successfull_oder);
//   }
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
