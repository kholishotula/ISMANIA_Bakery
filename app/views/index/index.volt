{% extends "layouts\base.volt" %}

{% block title %}Welcome Page ISMANIA Bakery{% endblock %}

{% block content %}
<body>
	<div id="text_buka">
		Explore more with us!<br><br>
		<a href="{{url("login")}}" class="btn">Log In</a>
		<a href="{{url("register")}}" class="btn">Sign Up</a><br><br>
		<a href="{{url("Home")}}" style="font-size=12px; color=black">Enter as a guest</a>
	</div>
</body>
{% endblock %}