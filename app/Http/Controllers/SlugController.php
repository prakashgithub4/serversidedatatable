<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slug;

class SlugController extends Controller
{
    //
    public function index(){
        $slug=Slug::all();
        return view('slugexample',compact('slug'));
    }
    public function add(){
        return view('add');
    }
    public function save(Request $request){
        $home = new HomeController();
        $slug = new Slug();
        $slug->title=$request->title;
        $slug->slug=$request->slug;
        $slug->save();
        // $home->sendNotification($request->all());
        // $result = collect(["result"=>$slug]);
        //return $result;
         return redirect('/');
    }
    public function details($slug){
       $slug = Slug::where('slug',$slug)->first();
      // echo "<pre>";print_r($slug); exit;
       return view('details',compact('slug'));
    }
    public function list(Request $request){
       
     $draw = $request->get('draw');
     $start = $request->get("start");
     $rowperpage = $request->get("length"); // Rows display per page
     $columnIndex_arr = $request->get('order');
     $columnName_arr = $request->get('columns');
     $order_arr = $request->get('order');
     $search_arr = $request->get('search');
     $columnIndex = $columnIndex_arr[0]['column']; // Column index
     $columnName = $columnName_arr[$columnIndex]['data']; // Column name
     $columnSortOrder = $order_arr[0]['dir']; // asc or desc
     $searchValue = $search_arr['value']; // Search value
     

     // Total records
     $totalRecords = Slug::select('count(*) as allcount')->count();
     $totalRecordswithFilter = Slug::select('count(*) as allcount')->where('title', 'like', '%' .$searchValue . '%')->count();
    
     // Fetch records
     $records = Slug::orderBy($columnName,$columnSortOrder)
       ->where('slugs.title', 'like', '%' .$searchValue . '%')
       ->Orwhere('id','=',$searchValue)
       ->select('slugs.*')
       ->skip($start)
       ->take($rowperpage)
       ->get();
       
     $data_arr = array();
     
     foreach($records as $key=>$record){
       // $id = $record->id;
        $title = $record->title;
        $name = $record->slug;
       // $email = $record->email;

        $data_arr[] = array(
          "id" => ($key+1),
          "title" => $title,
          "slug" => $name,
          "action" =>"<a href='".url('/details/'.$name)."'>Details</a>"
        );
     }
  

     $response = array(
        "draw" => intval($draw),
        "iTotalRecords" => $totalRecords,
        "iTotalDisplayRecords" => $totalRecordswithFilter,
        "aaData" => $data_arr
     );

     echo json_encode($response);
     exit;
   }
    
}
