{% extends "layout\base.volt" %}

{% block title %}List Product ISMANIA Bakery{% endblock %}

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
	<h1 class="header">List Product</h1>
    <center>
        <table>
            <tr>
                <td>Product</td>
                <td>Product Name</td>
                <td>Category</td>
                <td>Price</td>
                <td>Action</td>
            </tr>
            {% for myproduct in product %}
            <tr>
                <td><img src="{{ myproduct.photo }}" width=200px></td>
                <td>{{ myproduct.name }}</td>
                <td>{% if myproduct.category == 1 %}Cake{% endif %}
                    {% if myproduct.category == 2 %}Bread{% endif %}
                    {% if myproduct.category == 3 %}Cookies{% endif %}
                </td>
                <td>{{ myproduct.price }}</td>
                <td><form action="{{ url("delete_product") }}" method="get">
                    <input type="hidden" name="id_product" value={{myproduct.id}}>
                    <input type="submit" class="btn" value="Delete">
                    </form>
                </td>
            </tr>
            {% endfor %}
        </table>
        <br>
        <form action="{{ url("edit_product") }}" class="member" method="post" enctype="multipart/form-data">
        <div class="input">
            <label><center>Add Product</center><label><br>
        </div>
        <div class="input">
            <label for="name">Product Name</label>
            <input type="text" name="name">
        </div>
        <div class="input_gender">
            <label for="category">Product Category</label><br>
		    <input type="radio" name="category" value="1"> Cake<br>
		    <input type="radio" name="category" value="2"> Bread<br>
		    <input type="radio" name="category" value="3"> Cookies<br>
        </div>
        <div class="input">
            <label for="price">Product Price</label>
            <input type="number" name="price">
        </div>
        <div class="input">
            <label for="photo">Product Photo</label>
			<input type="file" name="photo">
        </div>
            <input type="submit" class="btn" value="Add Category">
        </form>
    </center>
</body>
{% endblock %}