{% extends "layout\base.volt" %}

{% block title %}Administrator Page ISMANIA Bakery{% endblock %}

{% block content %}
{% if session.has('admin') %}
	
{% else %}
    <script type="text/javascript">
        alert('You are not an admin');
        document.location.href="{{ url("Home") }}";
    </script>
{% endif %}
<body background="assets/bg_admin.jpg">
	<div class="text_admin">
		You're an Administrator<br><br>
		<a href="{{url("edit_product")}}" class="btn">Edit Product</a>
		<a href="{{url("edit_promo")}}" class="btn">Edit Promo</a>
        <a href="{{url("product_recommendation")}}" class="btn">See Product Recommendation</a><br><br>
		<a href="{{url("Home")}}" class="btn">Back to Home</a>
		<a href="{{ url("logout") }}" class="btn">Log Out</a>
	</div>
</body>
{% endblock %}