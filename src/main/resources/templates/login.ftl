<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel='stylesheet'
          href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="/static/css/login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body>
<div class="pen-title">
    <h1>Students Competency Assessment</h1><span>Created <i class='fa fa-code'></i> by <a
        href='http://vk.com/pavlik.sk98'>Skochko Pavel</a></span>
</div>
<!-- Form Module-->

<div class="module form-module">
    <div class="toggle"><i class="fa fa-times fa-pencil"></i>
        <div class="tooltip">Join us</div>
    </div>
    <div class="form">
        <h2>Login to your account</h2>
        <div>
            ${message?ifExists}
        </div><br/>
        <form action="/login" method="post">
            <input type="text" placeholder="Username" name="username"/>
            <input type="password" placeholder="Password" name="password"/>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Let me in</button>
        </form>
    </div>
    <div class="form">
        <h2>Create an account</h2>
        <form action="/registration" method="post">
            <input type="text" placeholder="First name" name="firstName">
            <input type="text" placeholder="Last name" name="lastName">
            <select title="Choose your sex" name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>
            <input type="email" placeholder="email" name="email"/>
            <input type="text" placeholder="Username" name="username"/>
            <input type="password" placeholder="Password" name="password"/>
            <input type="password" placeholder="Confirm your password" name="rePassword">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Create an account</button>
        </form>
    </div>
    <div class="cta"><a href="">Forgot your password?</a></div>
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="/static/js/login.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>


</body>
</html>
