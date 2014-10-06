  <?php include("modelo/mseguridad.php"); 
  $perusu = isset($_SESSION["perfil"]) ? $_SESSION["perfil"]:NULL;?>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
	  <head>
		  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
				  <link rel="stylesheet" href="css/style.css" type="text/css" />
		 		<link rel="stylesheet" href="css/estilos.css" type="text/css" />
		  <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js' type='text/javascript'/></script>
	  </head>
	  <body>
      <center>
	  <div id="contenedor">
	  <div id="cabez">
					</div>
                    <div id="inicio">&nbsp;&nbsp;<img border=0 src="image/home.png" width="30" height="30"/></div>
                    <div id="salir">&nbsp;&nbsp;<img border=0 src="image/salir1.png" width="30" height="30"/></div>
                      <div id="contenidorc">
					  <div id="menu">
						  <?php
						  include("vista/menu.php");
						  ?>
						 </div>
				  </div>
				  <div id="pie">
  <?php
  $perusu = isset($_SESSION["perfil"]) ? $_SESSION["perfil"]:NULL;
  ?>
				   </div>
				</div>		
		</center>	 
	  </body>
  </html>