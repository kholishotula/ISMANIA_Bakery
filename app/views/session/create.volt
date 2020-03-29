{% extends "layout\base.volt" %}

{% block title %}Log In ISMANIA Bakery{% endblock %}

{% block content %}
{% if session.has('auth') %}
	<script type="text/javascript">
        alert('You have logged in');
        document.location.href="{{ url("Home") }}";
    </script>
{% else %}
    {% if session.has('admin') %}
       	<script type="text/javascript">
        	alert('You have logged in');
        	document.location.href="{{ url("Home") }}";
    	</script>
    {% endif %}
{% endif %}
<body background="assets/bg_login.png">
	<h1 class="header">Membership Log In</h1>
	<form action="{{url("login")}}" class="member" method="post">
		<div class="input">
			<label for="Member_KTP">Member KTP</label>
			<input type="number" name="Member_KTP" value="{{ remember_ktp }}">
		</div>
		<div class="input">
			<label for="Member_password">Password</label>
			<input type="password" name="Member_password" value="{{ remember_password }}">
		</div>
		<input type="checkbox" name="remember" value="1">Remember me
		<div class="input">
			<input type="submit" class="btn" value="Log In">
		</div>
	</form>
	<div class="kata">
		<p>Haven't join as a member? Sign up for free!</p>
		<a href="{{url("register")}}" id="move">Click here</a>
	</div>
</body>
{% endblock %}