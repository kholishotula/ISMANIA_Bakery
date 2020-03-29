{% extends "layouts\base.volt" %}

{% block title %}ISMANIA Cake and Bakery{% endblock %}

{% block content %}
<body>
    <div class="nav">
		<a href="{{ url("Home") }}">Home</a>
		<a href="{{ url("Product") }}">Product</a>
		<a href="{{ url("Promo") }}">Promo</a>
		<a class="active" href="{{ url("News") }}">News</a>
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

    <div class="berita">
		<img src="assets/af125637-fa7d-4a88-80f6-35c32e03b011.v1.png" style="width: 40%">
		<img src="assets/tagline.png" style="width: 80%; margin-top: -8%">
		<p>Berawal dari hobi seorang anak akan memasak, lama-kelamaan ia mulai mengenal dunia kue. Dunia kue inilah yang membuka peluang usaha baginya. Dengan berbekal keberanian dan dukungan orang tua, anak tersebut mulai berjualan kue dalam skala kecil.</p>
		<img src="assets/girl_bake.jpg" style="width: 30%">
		<p>Sempat vakum selama beberapa tahun, namun ketika waktu itu ada dan semangat telah menggebu, anak tersebut kembali menjalankan bisnis kuenya. Kini anak tersebut telah mempelajari berbagai jenis kue sehingga dapat melebarkan sayapnya dengan banyak menerima pesanan.</p>
		<p>Rasa yang unik dan otentik serta ramah di kantong membuat kue ini digemari oleh banyak kalangan. Tak perlu waktu lama, kini ISMANIA Bakery telah mempunyai outlet sendiri di rumahnya.</p>
		<img src="assets/woman_chef.png" style="width: 30%">
		<p>Mendapatkan promo menarik setiap belanja merupakan salah satu promo yang ditawarkan oleh ISMANIA Bakery pada member-nya. Berbagai promo lainnya dapat dilihat di <a href="{{ url("Promo") }}" style="color: red">sini!</a></p>
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