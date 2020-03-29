<!DOCTYPE html>
<html>
<head>
	{% include 'layout\header.volt' %}
	<title>{% block title %} {% endblock %}</title>
</head>
<body class="introduction">
	{% block content %} {% endblock %}
</body>
</html>