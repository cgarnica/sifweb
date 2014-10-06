<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<title>..::::SIFWEB ::::..</title>
</head>
<body>
<center>
<div id="contenedor">
	<div id="cabez">
    </div>
    <div id="registror">
    <div></div>
	<div id="contenidorc" 
        <?php 
		$Pac = isset($_GET["pac"]) ? $_GET["pac"]:NULL;
			if (is_null($Pac)){
				include ("vista/vingreso.php");
			} /*else if ($Pac=="131"){
				include ("vista/vcontra.php");
			}else if ($Pac=="132"){
				include ("vista/vcontra1.php");
			}else if ($Pac=="130"){
				include ("vista/vregistro1.php");
			}*/
        ?>
	</div>
    </div>
	<div id="pie">
    </div>
</div>
</center>
</body>
</html>