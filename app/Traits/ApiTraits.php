<?php
 
namespace App\Traits;
use DB;

trait ApiTraits {
    public function getMessages($error = [],$message ="",$data=[],$status = ''){
    
        return response()->json(["errors"=>$error,'message'=>$message,'data'=>$data,'status'=>$status]);
    }
    public function createdata($table,$data=[]){
        DB::table($table)->insert($data);
        return $data;
    }
    public function getDetails($table,$id){
      $query = DB::table($table)->select("*")->where('id',$id)->get();
      return $query;
    }
}