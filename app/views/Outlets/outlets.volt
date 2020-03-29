{% extends "layouts\base.volt" %}

{% block title %}ISMANIA Cake and Bakery{% endblock %}

{% block content %}
<body>
    <div class="nav">
		<a href="{{ url("Home") }}">Home</a>
		<a href="{{ url("Product") }}">Product</a>
		<a href="{{ url("Promo") }}">Promo</a>
		<a href="{{ url("News") }}">News</a>
		<a class="active" href="{{ url("Outlets") }}">Outlets</a>
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

    <div class="produk">
		<div id="text_produk">
			OUR OUTLET<br>
			<img id="imgoutlet" src="assets/outlet2.jpg" style="margin-top: 20px">
			<div id="tosee">
				Jl KH Kholil 23 Gresik
			</div>
		</div>
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