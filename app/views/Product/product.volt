{% extends "layouts\base.volt" %}

{% block title %}ISMANIA Cake and Bakery{% endblock %}

{% block content %}
<body style="background-color=#cccccc">
    <div class="nav">
		<a href="{{ url("Home") }}">Home</a>
		<a class="active" href="{{ url("Product") }}">Product</a>
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
		ISMANIA Bakery is a home bakery which provides many kind of cakes and cookies with unique flavors and good price. So everybody can taste our products.
	</div>
	
    <div class="produk">
		<center>
			<h1 id="text_produk">OUR PRODUCTS</h1>

			<img id="text_cake" src="assets/text_cake.png"><br>
			
			<div id="cake">
				{% for product in product1 %}
					<div class="kiri">
						<img src="{{ product.photo }}" class="images">
						<h2 class="nama">{{ product.name }}</h2>
						Start from IDR {{ product.price }}
						<p><form action="{{ url("add") }}" method="get">
								<input type="hidden" name="id_product" value={{product.id}}>
								<input type="submit" value="Add to Cart">
                    		</form>
						</p>
					</div>
				{% endfor %}
			</div>

			<img id="text_bread" src="assets/text_bread.png"><br>

			<div id="bread">
				{% for product in product2 %}
					<div class="kiri">
						<img src="{{ product.photo }}" class="images">
						<h2 class="nama">{{ product.name }}</h2>
						Start from IDR {{ product.price }}
						<p><form action="{{ url("add") }}" method="get">
								<input type="hidden" name="id_product" value={{product.id}}>
								<input type="submit" value="Add to Cart">
                    		</form>
						</p>
					</div>
				{% endfor %}
			</div>

			<img id="text_cookies" src="assets/text_cookies.png">

			<div id="cookies">
				{% for product in product3 %}
					<div class="kiri">
						<img src="{{ product.photo }}" class="images">
						<h2 class="nama">{{ product.name }}</h2>
						Start from IDR {{ product.price }}
						<p><form action="{{ url("add") }}" method="get">
								<input type="hidden" name="id_product" value={{product.id}}>
								<input type="submit" value="Add to Cart">
                    		</form>
						</p>
					</div>
				{% endfor %}
			</div>
		</center>
	</div>

	<button id="open-button">Any recommendation?</button>

	<div class="form-popup" id="myForm">
		<form action="{{url("Product")}}" class="form-container" method="post" enctype="multipart/form-data">
			<h2>Any recommendation?</h2>
			Type your favorite product here to be sold in our outlet :)<br><br>
			<label for="name">Name</label><br>
			<input type="text" name="name"><br>
			<label for="product">Product</label><br>
			<input type="text" name="product"><br>
			<label for="desc">Description</label><br>
			<input type="text" name="desc"><br>
			<label for="photo">Product photo</label><br>
			<input type="file" name="photo"><br><br>
			<input type="submit" class="btn" value="Add recommendation"><br><br>
			<a class="btn" id="close-button" style="background=#cccccc">Cancel</a><br><br>
		</form>
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