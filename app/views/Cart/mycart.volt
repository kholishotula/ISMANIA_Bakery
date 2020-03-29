{% extends "layout\base.volt" %}

{% block title %}My Cart ISMANIA Bakery{% endblock %}

{% block content %}
{% if session.has('auth') %}
	
{% else %}
    {% if session.has('admin') %}
       <script type="text/javascript">
            alert('You are an admin');
            document.location.href="{{ url("Home") }}";
        </script>
    {% else %}
        <script type="text/javascript">
            alert('You have not log in, please log in first');
            document.location.href="{{ url("login") }}";
        </script>
    {% endif %}
{% endif %}
<body background="assets/bg_info.jpg">
	<h1 class="header">My Cart</h1>
	<form class="member" id="part-left" method="get">
		<h3>Billing Address</h3>
		<div class="input">
			<label>Member ID</label>
			<div class="show">{{ user.Member_ID }}</div>
		</div>
		<div class="input">
			<label>KTP Number</label>
			<div class="show">{{ user.Member_KTP }}</div>
		</div>
		<div class="input">
			<label>Name</label>
			<div class="show">{{ user.Member_name }}</div>
		</div>
		<div class="input">
			<label>Address</label>
			<div class="show">{{ user.Member_address }}</div>
		</div>
		<div class="input">
			<label>Telephone Number</label>
			<div class="show">{{ user.Member_telephone }}</div>
		</div>
	</form>

	<form class="member" action="{{ url("edit_cart") }}" id="part-right" method="post">
		<h3>Cart</h3>
		<div class="input">
			<label for="order_date">Delivery Date</label>
			<input type="date" name="order_date" value="{{ list.order_date }}">
		</div>
		<div class="input">
			{% if list.brownies > 0 %}
				<label>Brownies</label><input type="number" name="brownies" value="{{ list.brownies }}">
			{% endif %}
			{% if list.bolu_zebra > 0 %}
				<label>Bolu Zebra</label><input type="number" name="bolu_zebra" value="{{ list.bolu_zebra }}">
			{% endif %}
			{% if list.choco_lava > 0 %}
				<label>Choco Lava Cake</label><input type="number" name="choco_lava" value="{{ list.choco_lava }}">
			{% endif %}
			{% if list.japanese_cheesecake > 0 %}
				<label>Japanese Cheesecake</label><input type="number" name="japanese_cheesecake" value="{{ list.japanese_cheesecake }}">
			{% endif %}
			{% if list.blackforest > 0 %}
				<label>Blackforest</label><input type="number" name="blackforest" value="{{ list.blackforest }}">
			{% endif %}
			{% if list.roll_cake > 0 %}
				<label>Roll Cake</label><input type="number" name="roll_cake" value="{{ list.roll_cake }}">
			{% endif %}
			{% if list.cheesecake_jar > 0 %}
				<label>Cheesecake in Jar</label><input type="number" name="cheesecake_jar" value="{{ list.cheesecake_jar }}">
			{% endif %}
			{% if list.tart > 0 %}
				<label>Tart</label><input type="number" name="cheesecake_jar" value="{{ list.cheesecake_jar }}">
			{% endif %}
			{% if list.tiramisu > 0 %}
				<label>Tiramisu</label><input type="number" name="tiramisu" value="{{ list.tiramisu }}">
			{% endif %}
			{% if list.donuts > 0 %}
				<label>Donuts</label><input type="number" name="donuts" value="{{ list.donuts }}">
			{% endif %}
			{% if list.cheese_stick > 0 %}
				<label>Cheese Stick</label><input type="number" name="cheese_stick" value="{{ list.cheese_stick }}">
			{% endif %}
			{% if list.roti_sobek > 0 %}
				<label>Roti Sobek</label><input type="number" name="roti_sobek" value="{{ list.roti_sobek }}">
			{% endif %}
			{% if list.pizza > 0 %}
				<label>Pizza</label><input type="number" name="pizza" value="{{ list.pizza }}">
			{% endif %}
			{% if list.mozarella_stick > 0 %}
				<label>Mozarella Cheese Stick</label><input type="number" name="mozarella_stick" value="{{ list.mozarella_stick }}">
			{% endif %}
			{% if list.roti_pisang > 0 %}
				<label>Roti Pisang</label><input type="number" name="roti_pisang" value="{{ list.roti_pisang }}">
			{% endif %}
			{% if list.burger > 0 %}
				<label>Burger</label><input type="number" name="burger" value="{{ list.burger }}">
			{% endif %}
			{% if list.roti_abon > 0 %}
				<label>Roti Abon</label><input type="number" name="roti_abon" value="{{ list.roti_abon }}">
			{% endif %}
			{% if list.lidah_kucing > 0 %}
				<label>Lidah Kucing</label><input type="number" name="lidah_kucing" value="{{ list.lidah_kucing }}">
			{% endif %}
			{% if list.butter_cookies > 0 %}
				<label>Butter Cookies</label><input type="number" name="butter_cookies" value="{{ list.butter_cookies }}">
			{% endif %}
			{% if list.kue_sagu > 0 %}
				<label>Kue Sagu</label><input type="number" name="kue_sagu" value="{{ list.kue_sagu }}">
			{% endif %}
			{% if list.chocochip > 0 %}
				<label>Chocochip Cookies</label><input type="number" name="chocochip" value="{{ list.chocochip }}">
			{% endif %}
			{% if list.kue_semprit > 0 %}
				<label>Kue Semprit</label><input type="number" name="kue_semprit" value="{{ list.kue_semprit }}">
			{% endif %}
			{% if list.kue_nastar > 0 %}
				<label>Kue Nastar</label><input type="number" name="kue_nastar" value="{{ list.kue_nastar }}">
			{% endif %}
			{% if list.kue_putri > 0 %}
				<label>Kue Putri Salju</label><input type="number" name="kue_putri" value="{{ list.kue_putri }}">
			{% endif %}
			{% if list.kue_kastengel > 0 %}
				<label>Kue Kastengel</label><input type="number" name="kue_kastengel" value="{{ list.kue_kastengel }}">
			{% endif %}
			{% if list.kue_keciput > 0 %}
				<label>Kue Keciput</label><input type="number" name="kue_keciput" value="{{ list.kue_keciput }}">
			{% endif %}
		</div>
		<hr>
		<div class="input">
			Total<tabright>{{ list.Total }}
		</div>
		<div class="input">
			<input type="submit" class="btn" value="Update Cart">
		</div>
	</form>
	<div id="part-left" style="width: 100%">
	<center>
		<a href="{{url("Product")}}" class="btn">Continue Shopping</a>
		<a href="{{url("done")}}" class="btn">Check Out</a>
		<a href="{{url("clear")}}" class="btn">Clear My Shopping Cart</a>
	</center>
	</div>
</body>
{% endblock %}