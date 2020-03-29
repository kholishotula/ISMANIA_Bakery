{% extends "layout\base.volt" %}

{% block title %}Sign Up ISMANIA Bakery{% endblock %}

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
<body background="assets/bg_form.jpg">
	<h1 class="header">Membership Registration</h1>
	<form class="member" action="{{url("register")}}" method="post" enctype="multipart/form-data">
	<div class="input">
		<label for="Member_KTP">KTP Number</label>
		<p>{{messages['Member_KTP']}}</p>
		<input type="number" name="Member_KTP" id="Member_KTP">
	</div>
	<div class="input">
		<label for="Member_name">Name</label>
		<p>{{messages['Member_name']}}</p>
		<input type="username" name="Member_name" id="Member_name">
	</div>
	<div class="input">
		<label for="Member_birthdate">Birth date</label>
		<p>{{messages['Member_birthdate']}}</p>
		<input type="date" name="Member_birthdate" id="Member_birthdate">
	</div>
	<div class="input_gender">
		<label for="Member_gender">Gender</label><br>
		<p>{{messages['Member_gender']}}</p>
		<input type="radio" name="Member_gender" id="Member_gender" value="Male"> Male<br>
		<input type="radio" name="Member_gender" id="Member_gender" value="Female"> Female<br>
	</div>
	<div class="input">
		<label for="Member_address">Address</label>
		<p>{{messages['Member_address']}}</p>
		<input type="text" name="Member_address" id="Member_address">
	</div>
	<div class="input">
		<label for="Member_occupation">Occupation</label>
		<p>{{messages['Member_occupation']}}</p>
		<input type="text" name="Member_occupation" id="Member_occupation">
	</div>
	<div class="input">
		<label for="Member_telephone">Telephone</label>
		<p>{{messages['Member_telephone']}}</p>
		<input type="number" name="Member_telephone" id="Member_telephone">
	</div>
	<div class="input">
		<label for="Member_password">Add password</label>
		<p>{{messages['Member_password']}}</p>
		<input type="password" name="Member_password" id="Member_password">
	</div>
	<div class="input">
		<label for="Member_photo">Add photo</label>
		<p>{{messages['Member_photo']}}</p>
		<input type="file" name="Member_photo" id="Member_photo">
	</div>
	<div class="input">
		<input type="submit" class="btn" value="Register">
	</div>
	</form>
{% endblock %}