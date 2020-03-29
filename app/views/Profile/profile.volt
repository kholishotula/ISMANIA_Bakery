{% extends "layout\base.volt" %}

{% block title %}My Profile ISMANIA Bakery{% endblock %}

{% block content %}
{% if session.has('auth') %}
	
{% else %}
    {% if session.has('admin') %}
       <script type="text/javascript">
            document.location.href="{{ url("Admin") }}";
        </script>
    {% else %}
        <script type="text/javascript">
            alert('You have not log in, please log in first');
            document.location.href="{{ url("login") }}";
        </script>
    {% endif %}
{% endif %}
<body background="assets/bg_info.jpg">
	<h1 class="header">My Profile</h1>
	<form class="member" method="get">
		<div class="input">
			<label>Profile photo</label>
			<a href='data:image/png;base64,{{ user.Member_photo }}{{"'/download"}} {{this.session.get('auth')['id']}}{{".png"}}>
			<img src="data:image/png;base64,{{ user.Member_photo }}" width=200px>
			</a>
		</div>
		<div class="input">
			<label>Member ID</label>
			<div class="show">{{ user.Member_ID }}</div>
		</div>
		<div class="input">
			<label>KTP Number</label>
			<div class="show">{{ user.Member_KTP }}</div>
		</div>
		<div class="input">
			<label>Name</label>
			<div class="show">{{ user.Member_name }}</div>
		</div>
		<div class="input">
			<label>Birth date</label>
			<div class="show">{{ user.Member_birthdate }}</div>
		</div>
		<div class="input">
			<label>Gender</label>
			<div class="show">{{ user.Member_gender }}</div>
		</div>
		<div class="input">
			<label>Address</label>
			<div class="show">{{ user.Member_address }}</div>
		</div>
		<div class="input">
			<label>Occupation</label>
			<div class="show">{{ user.Member_occupation }}</div>
		</div>
		<div class="input">
			<label>Telephone Number</label>
			<div class="show">{{ user.Member_telephone }}</div>
		</div>
		<a href="{{ url("edit_profile") }}" id="move">Edit My Profile</a>
        <a href="{{ url("delete") }}" onclick="return confirm('Are you sure to delete your account?')" id="move">Delete My Account</a>
        <a href="{{ url("logout") }}" id="move">Log Out</a>
        <br><br><a href="{{ url("Home") }}" id="move">Back to Home</a>
	</form>
</body>
{% endblock %}