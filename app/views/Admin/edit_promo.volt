{% extends "layout\base.volt" %}

{% block title %}List Promo ISMANIA Bakery{% endblock %}

{% block content %}
{% if session.has('admin') %}
	
{% else %}
    <script type="text/javascript">
        alert('You are not an admin');
        document.location.href="{{ url("Home") }}";
    </script>
{% endif %}
<body background="assets/bg_2.png">
    <div class="pill-nav">
		<a href="{{ url("Admin") }}">Admin Page</a>
	</div>
	<h1 class="header">List Promo</h1>
    <center>
        <table>
            <tr>
                <td>Promo</td>
                <td>Action</td>
            </tr>
            {% for promos in promo %}
            <tr>
                <td><img src="{{ promos.photo }}" width=200px></td>
                <td><form action="{{ url("delete_promo") }}" method="get">
                    <input type="hidden" name="id_promo" value={{promos.id}}>
                    <input type="submit" class="btn" value="Delete">
                    </form>
                </td>
            </tr>
            {% endfor %}
        </table>
        <br>
        <form action="{{ url("edit_promo") }}" class="member" method="post" enctype="multipart/form-data">
        <div class="input">
            <label><center>Add Promo</center><label><br>
        </div>
        <div class="input">
			<input type="file" name="photo_promo" id="photo_promo">
        </div>
            <input type="submit" class="btn" value="Add Promo">
        </form>
    </center>
</body>
{% endblock %}