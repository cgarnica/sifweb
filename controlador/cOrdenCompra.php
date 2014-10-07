<?php 
 include ("../modelo/mOrdenCompra.php");
 $ins = new mOrdenCompra();
 
  $delete = isset($_GET["del"]) ? $_GET["del"]:NULL;
    if ($delete){
      $ins->delete($del);
    }
	
	$id_orden = isset($_POST["id_orden"]) ? $_POST["id_orden"]:NULL;
	$FechaFactura = isset ($_POST["FechaFactura"]) ? $_POST["FechaFactura"]:NULL;
	$vencimiento = isset ($_POST["vencimiento"]) ? $_POST["vencimiento"]:NULL;
	$factura = isset ($_POST["factura"]) ? $_POST["factura"]:NULL;
	$subtotal = isset ($_POST["subtotal"]) ? $_POST["subtotal"]:NULL;
	$iva = isset ($_POST["iva"]) ? $_POST["iva"]:NULL;
	$pagado = isset ($_POST["pagado"]) ? $_POST["pagado"]:NULL;
	$IdUsuario = isset ($_POST["IdUsuario"]) ? $_POST["IdUsuario"]:NULL;
	$descuento = isset ($_POST["descuento"]) ? $_POST["descuento"]:NULL;
	$total = isset ($_POST["total"]) ? $_POST["total"]:NULL;
	$observacion = isset ($_POST["observacion"]) ? $_POST["observacion"]:NULL;
	$vendedor = isset ($_POST["vendedor"]) ? $_POST["vendedor"]:NULL;
	$ajuste = isset ($_POST["ajuste"]) ? $_POST["ajuste"]:NULL;
	$nit_id = isset ($_POST["nit_id"]) ? $_POST["nit_id"]:NULL;
	$actu = isset($_POST["actu"]) ? $_POST["actu"]:NULL;
