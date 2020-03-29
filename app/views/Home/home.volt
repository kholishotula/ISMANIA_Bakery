{% extends "layouts\base.volt" %}

{% block title %}ISMANIA Cake and Bakery{% endblock %}

{% block content %}
    <div class="nav">
		<a class="active" href="{{ url("Home") }}">Home</a>
		<a href="{{ url("Product") }}">Product</a>
		<a href="{{ url("Promo") }}">Promo</a>
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
		ISMANIA Bakery is a home bakery which provides many kind of cakes and cookies with unique flavors and good price. So everybody can taste each of our products.
	</div>
	
    <div class="plus">
		<div class="kiri">
			<img src="assets/fresh.jpg" height="100px">
			<h3>Fresh From The Oven</h3>
			The bakery are made only by request. So they're fresh.
		</div>
		<div class="kiri">
			<img src="assets/ingredients.jpg" height="100px">
			<h3>High Quality Ingredients</h3>
			We use high quality ingredients to make everything taste so perfect.
		</div>
		<div class="kiri">
			<img src="assets/hygienic.jpg" height="100px">
			<h3>Hygienic and Healthy</h3>
			We process our ingredients with clean standard. The bakery are also free of preservatives.
		</div>
		<div class="kiri">
			<img src="assets/authentic.jpg" height="100px">
			<h2>Authentic Taste</h2>
			With special recipe that makes the taste authentic!
		</div>
		<div class="kiri">
			<img src="assets/membership.png" height="100px">
			<h2>Membership</h2>
			Get special promo and discount only for members!
		</div>
		<div class="kiri">
			<img src="assets/delivery.jpg" height="100px">
			<h2>Delivery Service</h2>
			We deliver the bakery right to your hand!
		</div>
	</div>

	<div class="produk">
		<center>
			<h1 id="text_produk">OUR PRODUCTS</h1>
			<a id="tosee" href="{{ url("Product") }}">
				All Products
				<span id="poptext" style="font-family: Times New Roman; font-size: 18px">Click to know more!</span>
				<img src="assets/tombol.png" style="height: 20px">
			</a>

			<div class="iniproduk">
				<img src="assets/kue_awal.jpg" height="300px">
				<h2>Cake</h2>
				Perfectly baked with moist texture
			</div>
			<div class="iniproduk">
				<img src="assets/roti_awal.jpg" height="300px">
				<h2>Bread</h2>
				Perfectly grown and smooth
			</div>
			<div class="iniproduk">
				<img src="assets/cookies_awal.jpg" height="300px">
				<h2>Cookies</h2>
				Crisp outside and smooth inside
			</div>
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
{% endblock %}