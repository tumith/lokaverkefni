<!DOCTYPE html>
<html lang="is">
<head>
	<meta charset="utf-8">
	<title>Admin síðan</title>
	<!------------------------------------------------->
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
	<!------------------------------------------------->
</head>
<body>
	<h2>Velkominn á P&P síðuna {{u}} </h2>
	
	<form method="post" action="/nyfrett" accept-charset="ISO-8859-1" >
		<textarea name="story" cols="100" rows="5"></textarea>
		<p>
			Höfundur: <input type="text" name="author"> | <input type="submit" name="Skrá frétt">
		</p>
	</form>
	<hr>
	<p><a href="/">Fréttasíðan</a></p>
	<hr>
	<h3>Breyta frett</h3>
	<form method="post" action="/breyta_frett" accept-charset="ISO-8859-1">
		Höfundur:<br>
		<input type="text" name="author" required=""><br>
		<input type="submit" value="Innskrá">
	</form>
	<a href="/members">members</a>
	<footer>
		<p>&copy; 2018 SDB</p>
	</footer>
</body>
</html>