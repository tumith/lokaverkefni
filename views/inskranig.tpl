<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Innskránigar</title>
	<style>
	    * {
		    box-sizing: border-box;
		}

		body {
		    background: #b3b3b3; 
		    max-width: 50em;
		    margin: 1em auto; 
		    text-align: center;

		}
		h2{
		    color: hsl(0, 45%, 0%);
		}

		.inskra{

		}

		button{
		  background-color: #538cc6;
		  border: none;
		  color: #000;
		  padding: 16px 32px;
		  text-align: center;
		  font-size: 16px;
		  margin: 4px 2px;
		  opacity: 0.8;
		  transition: 0.6s;
		  display: inline-block;
		  text-decoration: none;
		  cursor: pointer;
		}
    </style>

</head>
<body>
	<hr>
	<h2>Innskráningarform:</h2>
	<form class="inskra" method='post' action='/doinnskra' accept-charset='ISO-8859-1' id='inn'>
		Notandanafn:<br>
		<input type="text" name="user" placeholder="Username" required><br>
		Lykilorð:<br>
		<input type="text" name="pass" placeholder="Password" required><br>
		<input type="submit" value="Innskrá">
		<input type="reset" value="Hreinsa">

	</form>
	<br>
		<button class="takinyskra" type="button" class="btn btn-outline-secondary" onclick="window.location.href='nyskranig'">Nýskrani</button>
		<button class="takinyskra" type="button" class="btn btn-outline-secondary" onclick="window.location.href='/'">Til baka</button>
</body>
</html>
