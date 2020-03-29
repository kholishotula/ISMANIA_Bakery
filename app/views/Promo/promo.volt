{% extends "layouts\base.volt" %}

{% block title %}ISMANIA Cake and Bakery{% endblock %}

{% block content %}
<body style="background-color=#cccccc">
    <div class="nav">
		<a href="{{ url("Home") }}">Home</a>
		<a href="{{ url("Product") }}">Product</a>
		<a class="active" href="{{ url("Promo") }}">Promo</a>
		<a href="{{ url("News") }}">News</a>
		<a href="{{ url("Outlets") }}">Outlets</a>
		<a href="#Contact">Contact</a>
		{% if session.has('admin') %}
			<a class="data" href="{{ url("Admin") }}">Admin</a>
		{% endif %}
		{% if session.has('auth') %}		
			<a class="data" href="{{ url("Profile") }}">My Profile</a>
			<a class="data" href="{{ url("MyCart") }}"><img src="assets/mycart.png" style="height: 16px, width: 16px"></a>
		{% else %}
			<a class="data" href="{{ url("login") }}">Log In</a>
		{% endif %}	
	</div>
	<div id="text_buka">
		ISMANIA Bakery is a home bakery which provides many kind of cakes and cookies with unique flavors and good price. So everybody can taste our products.
	</div>

    <div class="promo">
		<h1 id="text_produk">OUR PROMOS</h1>
		{% for promo in promo1 %}
			<img id="promo1" src="{{ promo.photo }}">
		{% endfor %}
		{% for promo in promo2 %}
			<img id="promo2" src="{{ promo.photo }}">
		{% endfor %}
		{% for promo in promo3 %}
			<img id="promo3" src="{{ promo.photo }}">
		{% endfor %}
		<br><br><br>
		<center>
            <img src="assets/Card.png" style="width: 40%">
            <br>GO GRAB YOUR MEMBER CARD
            <br>IN OUR OUTLET!
        </center>
	</div>

   	<div id="Contact">
    	<div id="text_kontak">
	    	<strong>Contact Us !</strong>
	    </div>
		<div id="last">
			<img src="assets/sosmed.png" style="height: 150px">
			<br>fb : ISMANIA Cake and Bakery
			<br>ig : @ismania.bakery
			<br>wa : 088888888888
		</div>
		<div id="hub">
			<a href="{{ url("Outlets") }}">
				<img src="assets/outlet.png" style="height: 90px">
				<h3>Our Outlet</h3>
				Jl KH Kholil 23 Gresik
			</a>
		</div>
		<img src="assets/tagline.png" style="width: 100%">
	</div>
</body>
{% endblock %}