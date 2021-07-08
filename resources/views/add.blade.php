<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

</head>
<body>

<div class="container">
  <h2>Vertical (basic) form</h2>
  <form action="{{url('/save')}}" id="basic-form" method='post'>
  @csrf
    <div class="form-group">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter title" name="title" onkeyup="createslug(this.value)" required>
    </div>

    <div class="form-group">
      <label for="title">Slug:</label>
      <input type="text" class="form-control" id="slug" placeholder="slug" name="slug" required>
    </div>
   
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>
<script>
function createslug(value){
let slug = value.toLowerCase().replace(/ /g,'-');
$("#slug").val(slug);
}
$(document).ready(function() {
$("#basic-form").validate({
  rules: {
            username: {
                required: true,
                duplicate_username: true
            },
            password: { required: true },
            email: { email: true }
        },
        messages: {
            username: {
                required: "Please enter a username",
                duplicate_username: "The username you entered is already used"
            },
            password: {
                required: "Please enter a password"
            },
            email: "Please enter a valid email address"
        },
        submitHandler: function(form) {
        $.ajax({
            url: form.action,
            type: form.method,
            data: $(form).serialize(),
            success: function(response) {
               console.log(response);
               window.location.replace("{{URL('/')}}")
            }            
        });
    }
});
});

</script>