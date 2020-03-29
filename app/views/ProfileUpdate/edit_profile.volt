{% extends "layout\base.volt" %}

{% block title %}Edit Profile ISMANIA Bakery{% endblock %}

{% block content %}
{% if session.has('auth') %}
	
{% else %}
    {% if session.has('admin') %}
       <script type="text/javascript">
            alert('You are an admin');
            document.location.href="{{ url("Home") }}";
        </script>
    {% else %}
        <script type="text/javascript">
            alert('You have not log in, please log in first');
            document.location.href="{{ url("login") }}";
        </script>
    {% endif %}
{% endif %}
<body background="assets/bg_info.jpg">
	<h1 class="header">Edit Profile</h1>
	<form class="member" action="{{ url("edit_profile") }}" method="post">
        <div class="input">
            <label for="Member_name">Name</label>
            <input type="username" name="Member_name" value="{{ user.Member_name }}">
        </div>
        <div class="input">
            <label for="Member_birthdate">Birth date</label>
            <input type="date" name="Member_birthdate" id="Member_birthdate" value="{{ user.Member_birthdate }}">
        </div>
        <div class="input">
            <label for="Member_gender">Gender</label>
            <input type="text" name="Member_gender" id="Member_gender" value="{{ user.Member_gender }}">
        </div>
        <div class="input">
            <label for="Member_address">Address</label>
            <input type="text" name="Member_address" value="{{ user.Member_address }}">
        </div>
        <div class="input">
            <label for="Member_occupation">Occupation</label>
            <input type="text" name="Member_occupation" value="{{ user.Member_occupation }}">
        </div>
        <div class="input">
            <label for="Member_telephone">Telephone</label>
            <input type="number" name="Member_telephone" value="{{ user.Member_telephone }}">
        </div>
        <div class="input">
            <input type="submit" class="btn" value="Save">
        </div>
        <br><br><a href="{{ url("Home") }}" id="move">Back to Home</a>
	</form>
</body>
{% endblock %}