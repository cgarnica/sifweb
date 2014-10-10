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
                  <div id="contcen" class="bodytext" style="padding:12px;">

                        <?php  
                        $Pac = isset($_GET["pac"]) ? $_GET["pac"] : NULL;
                        $Up = isset($_GET["up"]) ? $_GET["up"] : NULL;

                        if (is_null($Pac)) {
                             include("vista/menu.php");
                        } else if ($Pac == "100") {
                            include("vista/vparametro.php");
                        } else if ($Pac == "101") {
                            if (is_null($Up)) {
                                include("vista/vproveedor.php");
                            } else {
                                include("vista/vproveedor1.php");
                            }
                        } else if ($Pac == "103") {
                            if (is_null($Up)) {
                                include("vista/vubicacion.php");
                            } else {
                                include("vista/vubicacion1.php");
                            }
                        } else if ($Pac == "104") {
                            if (is_null($Up)) {
                                include("vista/vperfil.php");
                            } else {
                                include("vista/vperfil1.php");
                            }
                        } else if ($Pac == "105") {
                            if (is_null($Up)) {
                                include("vista/vprograma.php");
                            } else {
                                include("vista/vprograma1.php");
                            }
                        } else if ($Pac == "106") {
                            if (is_null($Up)) {
                                include("vista/vficha.php");
                            } else {
                                include("vista/vficha1.php");
                            }
                        } else if ($Pac == "107") {
                            if (is_null($Up)) {
                                include("vista/vaprendiz.php");
                            } else {
                                include("vista/vaprendiz1.php");
                            }
                        } else if ($Pac == "108") {
                            if (is_null($Up)) {
                                include("vista/vencuesta.php");
                            } else {
                                include("vista/vencuesta1.php");
                            }
                        } else if ($Pac == "109") {
                            if (is_null($Up)) {
                                include("vista/vcontes.php");
                            } else {
                                include("vista/vcontes1.php");
                            }
                        } else if ($Pac == "110") {
                            if (is_null($Up)) {
                                include("vista/vexplaboral.php");
                            } else {
                                include("vista/vexplaboral1.php");
                            }
                        } else if ($Pac == "128") {
                            if (is_null($Up)) {
                                include ("vista/vencuapren.php");
                            } else {
                                include ("vista/vencuapren1.php");
                            }
                        } else if ($Pac == "111") {
                            if (is_null($Up)) {
                                include ("vista/vestadi.php");
                            } else {
                                include ("vista/vestadi.php");
                            }
                        } else if ($Pac == "112") {
                            if (is_null($Up)) {
                                include("vista/vpromas.php");
                            } else {
                                include("vista/vpromas.php");
                            }
                        } else if ($Pac == "113") {
                            if (is_null($Up)) {
                                include("vista/vfichamas.php");
                            } else {
                                include("vista/vfichamas1.php");
                            }
                        } else if ($Pac == "114") {
                            if (is_null($Up)) {
                                include("vista/vaprenmas.php");
                            } else {
                                include("vista/vaprenmas.php");
                            }
                        } else if ($Pac == "115") {
                            if (is_null($Up)) {
                                include("vista/vpre.php");
                            } else {
                                include("vista/vpre1.php");
                            }
                        } else if ($Pac == "120") {
                            if (is_null($Up)) {
                                include("vista/vregistrousu.php");
                            }
                        } else if ($Pac == "116") {
                            //if (is_null($Up)) {
                                include("vista/vres.php");
                           } else if ($Pac == "121") {
                            //if (is_null($Up)) {
                                include("vista/vregistrov.php");
                            }	else if ($Pac == "123") {
                            //if (is_null($Up)) {
                                include("vista/vcambio-contraseña.php");
                            	 }else if ($Pac == "124") {
                            //if (is_null($Up)) {
                                include("vista/vregistroad.php");
                            }else if ($Pac == "125") {
                            //if (is_null($Up)) {
                                include("vista/vregis.php");
                            }
								
                        //}
                        
                        ?>

                    </div>
				</div>
                </div>
				  <div id="pie">
				   </div>
				</div>		
		</center>	 
	  </body>
  </html>