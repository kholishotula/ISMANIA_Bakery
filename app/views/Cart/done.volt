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

{% set due_date = time() + 2*86400 %}

<body background="assets/background-biru.gif">
    <center><img src="assets/thankyou.gif" style="width: 35%; padding-top: 50px; opacity: 0.7"></center>
    <div class="text_admin">
        Your billing code is {{ random.hex(10) }}<br>
        Pay your bill before {{ date("d-m-Y", due_date) }}<br><br>
        <a href="{{url("Home")}}" class="btn">Back to Home</a>
    </div>
</body>

{% endblock %}