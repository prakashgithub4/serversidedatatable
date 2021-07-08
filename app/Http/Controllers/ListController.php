<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class ListController extends Controller
{
    /* repositary Pattern*/
    protected $posts;
    public function __construct(Post $posts){
        $this->posts = $posts;
    }
    //
    public function index(){
        $post = $this->posts->with('replies')->get();
       // echo"<pre>";print_r($post); exit;
       // storage procedure 
       //$sample = \DB::select('CALL post_details()');
       //$sample = \DB::select('CALL get_post_details(2)');
       //echo "<pre>"; print_r($sample); exit;

        return view('list',compact('post'));
    }
}
