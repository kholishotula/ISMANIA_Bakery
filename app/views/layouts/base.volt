<!DOCTYPE html>
<html>
<head>
	{% include 'layouts\header.volt' %}
	<title>{% block title %} {% endblock %}</title>
</head>
<body>
<div class="intro">
	<div id="img_buka">
		<img src="assets/af125637-fa7d-4a88-80f6-35c32e03b011.v1.png">
	</div>
</div>
	{% block content %} {% endblock %}
</body>
</html>