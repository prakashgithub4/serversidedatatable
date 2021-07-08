<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Basic Table</h2>
  <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>            
  <table class="table">
    <thead>
      <tr>
        <th>Title</th>
        <th>Description</th>
        <th>operations</th>
      </tr>
    </thead>
    <tbody>
    @foreach($post as $posts)
      <tr>
        <td>{{$posts->title}}</td>
        <td>{{$posts->description}}</td>
        <td><button type="button" class="btn btn-primary">Delete</button></td>
      </tr>
     
      @foreach($posts->replies as $reply)

      <tr>
        <td>Reply {{$reply->title}}</td>
        <td>{{$reply->description}}</td>
        <td><button type="button" class="btn btn-primary">Delete</button></td>
      </tr>
      @endforeach
    @endforeach
    </tbody>
  </table>
</div>

</body>
</html>
