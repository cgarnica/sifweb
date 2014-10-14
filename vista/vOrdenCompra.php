<?Php
include ("../controlador/cOrdenCompra.php");
?>

<center>
<h1>INGRESAR ORDEN DE COMPRA</h1>
<table align="center" width="700" border="0" cellspacing="5" cellpadding="3" style="background:white"">
<form name="OrdenCompra" action="" method="post"><br/>
<tr>
	<td>
	<label for="FechaFactura">Fecha de Compra</label><br/>
	<input type="datetime-local" id= "FechaFactura" name="FechaFactura"/><br/></td>
    <td>
    <label for = "Vencimiento">Fecha de Vencimiento</label><br/>
    <input type = "datetime-local" id= "Vencimiento" name = "Vencimiento" /><br/></td>
	<td valign="bottom">
    <input type = "text" id="Factura" name = "Factura" placeholder="N&uacute;mero de Factura" size="20px"/><br/></td>
    </tr>
<tr>
    <td>
    <input type = "text" id = "subtotal" name="subtotal" placeholder="SubTotal" size="20px"/></br></td>
    <td>
    <input type = "text" id = "iva" name= "iva" placeholder="Iva" size="20px"/></br></td>
    <td>
    Pagado  <input type="checkbox" id= "Pagado" name="pagado" value="True"></br></td>
</tr>
<tr>
	<td>
    Usuario
    <select name="Usuario" >
    <?php 
		for($i = 0; $i<count($usu); $i++){
	?>
    <option value="<?php echo $usu[$i]['id_usuario']; ?>" ><?php echo $usu[$i]['nombre']; ?> <?php echo $usu[$i]['apellido']; ?></option>
    <?php
		}
	?>
    </select></br></td>
    <td>
    <input type="text" id="descuento" name="descuento" placeholder="Descuento %"></br></td>
    <td>
    <input type="text" id ="Total" name = "Total" placeholder="Valor Total"></br></td>
</tr>
<tr>
	<td align="center" colspan="3">
    <textarea id="Observaciones" name= "Observaciones" rows="4" cols="100" placeholder="Ingrese sus Observaciones, M&aacute;ximo 250 caracteres" maxlength="250"></textarea><br></td>
</tr>
<tr>
	<td>
	<input type="text" name="Vendedor" id="Vendedor" placeholder="Vendedor"></td>
    <td>
    <input type="text" name="ajuste" id="ajuste" placeholder="Ajuste"></td>
    <td colspan="2">
    Seleccione el Proveedor
    <select name="proveedor">
    <?php
		for ($i = 0; $i<count($pro); $i++){
	?>
    	<option value="<?php echo $pro[$i]['id_nit']; ?>"><?php echo $pro[$i]['razon_social']; ?></option>
    <?php
		}
	?>
    </select>
    </td>
 </form>
	