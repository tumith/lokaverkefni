<!DOCTYPE html>
<html lang="is">
<head>
	<meta charset="utf-8">
	<title>Leynisíða</title>
	<!------------------------------------------------->
	<style>
		body{
			background-color: beige;
			margin: 3em;
		}

		h2{
			color: #a00;
			font-family: sans-serif;
		}
	</style>
	<!------------------------------------------------->
</head>
<body>
	<h2>Velkomin/n {{u}}</h2>
	<p>Here are the games</p>
	% import pymysql
	% conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1106012980', passwd='mypassword', db='1106012980_vef2_lokaverkefni')
	% c = conn.cursor()
	% c.execute("SELECT * FROM 1106012980_vef2_lokaverkefni.blogg")
	% for i in c:     
		<div class="row">
		<div class="leftcolumn">
			<div class="card">
			<h2>{{i[2]}}</h2>
			<h5>{{i[3]}}</h5>
			<p>u/{{i[1]}}</p>
			</div>
		</div>
		%end
</body>
</html>