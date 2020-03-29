{% extends "layout\base.volt" %}

{% block title %}Product Recommendation ISMANIA Bakery{% endblock %}

{% block content %}
{% if session.has('admin') %}
	
{% else %}
    <script type="text/javascript">
        alert('You are not an admin');
        document.location.href="{{ url("Home") }}";
    </script>
{% endif %}
<body background="assets/bg_prodrecom.jpg">
    <div class="pill-nav">
		<a href="{{ url("Admin") }}">Admin Page</a>
	</div>
	<h1 class="header" style="margin-top: 120px;">Product Recommendation</h1>
    <div id="prodrecom">
        {% for recom in product %}
        <li>{% if recom.photo is not NULL %}<img src="data:image/png;base64,{{ recom.photo }}" width=200px><br>{% endif %}
            {{ recom.product }}
            {% if recom.desc is not NULL %}<br>{{ recom.desc }}{% endif %}
        </li>
        {% endfor %}
    </div>
    <center><a href="{{url("Home")}}" class="btn" style="top: 93%; left: 47%; position: absolute">Back to Home</a><center>
</body>
{% endblock %}