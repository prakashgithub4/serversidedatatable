<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
<style>
  td.highlight {
    background-color: whitesmoke !important;
}
</style>
</head>

<body>


<div class="container">
  <h2>Basic Table</h2>
  <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p> 
  <a class="btn btn-default" href="{{url('/add')}}">Add</a>           
  <table class="table" id="tab">
    <thead>
      <tr>
        <td>Sl</td>
        <th>Tittle</th>
        <th>Slug</th> 
        <th>operation</th>
      </tr>
    </thead>
    {{-- <tbody> --}}
    {{-- @foreach($slug as $item)
      <tr>
        <td>{{$item->title}}</td>
        <td>{{$item->slug}}</td>
        <td><a href="{{url('/details/'.$item->slug)}}">details</a></td>
      </tr>
      @endforeach --}}
    {{-- </tbody> --}}
  </table>
</div>

</body>
</html>


<script>
 
    $(document).ready(function () {
      $('#tab').DataTable({
          
          "processing":true,
          "serverSide":true,
          "bLengthChange": false,
          "searching": false,
          
  
          "ajax": {
            "url": "{{url('list')}}",
           
        },
         
         // data:json,
          columns:[
            {data:"id"},
            {data:"title"},
            {data:"slug"},
            {data:"action"}
            
            ]
        });
       
    });
</script>

