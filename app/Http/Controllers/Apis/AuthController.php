<?php

namespace App\Http\Controllers\Apis;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Traits\ApiTraits;
use Illuminate\Support\Facades\Hash;




class AuthController extends Controller
{
    //
    use ApiTraits;
    public function registeruser(Request $request){
       
         $validator  = Validator::make($request->all(),[
             'name'=>'required|max:255',
             'email'=>'required',
             'password'=>'required|confirmed',
             'phone'=>'required'

         ]);
         if($validator->fails()){
            return $this->getMessages($validator->errors());
           //return response()->json(['errors'=>$validator->errors(),'message'=>'','data'=>[]]);
         }else{
            $data = $this->createdata('users',[
             'name'=>$request->name,
             'email'=>$request->email,
             'password'=>Hash::make($request->password),
             'phone'=>$request->phone]
            );
            $details = [
                'title' => 'Mail from ItSolutionStuff.com',
                'body' => 'This is for testing email using smtp'
            ];
           
            \Mail::to($request->email)->send(new \App\Mail\MyTestMail($details));
             return $this->getMessages('','data has been created successfully',$data,'true');
         }

    }
    public function login(Request $request){

        $validator  = Validator::make($request->all(),[         
            'email'=>'required',
            'password'=>'required',
        ]);
        if($validator->fails()){
           return $this->getMessages($this->getMessages($validator->errors()));
          //return response()->json(['errors'=>$validator->errors(),'message'=>'','data'=>[]]);
        }else{
            $crediencials = $request->only('email','password');
            if(!$token = auth('api')->attempt($crediencials)){
                return $this->getMessage('user is not authorized');
             
            }else{
                return $this->getMessages('','User has been logged in successfully',$this->createNewToken($token),true);
            }


            
        }
      
    }
    public function refresh()
    {
        return $this->createNewToken(auth()->refresh());
    }
    protected function createNewToken($token){
        return response()->json([
            'token' =>'bearer '. $token,
            'type' => 'bearer', // you can ommit this
            'expires' => auth('api')->factory()->getTTL() * 60, // time to expiration
            
        ]);
    }
    public function logout(){
      \Auth::logout();
      return $this->getMessages('','User has been logout successfully',[],true);

    }
    public function getProfile(){
        $userid = \Auth::user();
        $userdetails = $this->getDetails('users',$userid->id);
        return $this->getMessages('','User profile is fetch successfully',$userdetails,true);
    }
    public function changePassword(){
        
    }
}
