<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Panda í Paradýs</title>
    <style>
	    * {
	    box-sizing: border-box;
		}

		body {
			background-color: #b3b3b3;
		    max-width: 50em;
		    margin: 1em auto;
		    text-align: right;
		}
		p{
			text-align: center;
		}
		h2{
		    color: hsl(0, 45%, 0%);
		    text-align: center;
		    padding: 0% 23%;
		    display: inline-block;
		}

		.inskra{

		}

		button{
		  background-color: #538cc6;
		  border: none;
		  color: #000;
		  padding: 16px 32px;
		  font-size: 16px;
		  margin: 4px 2px;
		  opacity: 0.8;
		  transition: 0.6s;
		  display: inline-flex;
		  text-align: right;
		  text-decoration: none;
		  cursor: pointer;
		}
    </style>

</head>
<body>
	<h2>Panda í Paradýs</h2>
	<button class="takinyskra" type="button" class="btn btn-outline-secondary" onclick="window.location.href='inskranig'">inskranig</button>
	<hr>
	<p>Hér er allt or something</p>
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
