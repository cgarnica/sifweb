<?php 
    include ("../controlador/ccliente.php");
    include ("../js/cliente.js");
?>



<script language="javascript" src="../../Sifweb/js/jquery-1.2.6.min.js"></script><!-- llamamos al JQuery-->
<script language="javascript">
    
     function Duplicidad(Id){
      var doc = {
                "Id" : Id
        };

        $.ajax({
                data:  doc,
                url:   '../vista/vduplicidad.php',
                type:  'post',
                success:  function (response) {
                        $("#id_nit_duplicado").html(response);
                }
        });
     }
</script>


<center>
	<form name="form1" action="" method="POST">
		<table align="center" width="400" border="0" cellspacing="5" cellpadding="3" style="background:white">

            <tr>
                <td colspan=5 align="center"><h1>Registrese</h1></td>
            </tr>

            <tr>
                <td >Tipo de Documento
                    <select name="tipo_documento" id="tipo_documento">
                       <?php 
                            //Select
                            $dat3 = $ins->selpara(1);
                            for ($i=0; $i < count($dat3); $i++){
                         ?>
                            <option value="<?php echo $dat3[$i]['codval'] ?>"><?php echo $dat3[$i]['nomval'] ?></option>
                        <?php } ?>
                    </select>
                </td>

              <td ><div id="id_nit_duplicado"></div>
                    <input type="text" name="documento" id="documento" size="25" maxlength="11"  required="required" placeholder="Numero del Documento"  onkeypress="return validar(event);" onblur="Duplicidad(this.value)" /></td>
            </tr>
            <tr></tr>
            <tr>
                <td>
                    <input type="text" name="nombre" id="nombre" size="25" maxlength="30" required placeholder="Ingrese su Nombre" /> </td>

                <td>
                    <input type="text" name="apellido" id="apellido" size="25" maxlength="30" required placeholder="Ingrese su Apellido"  /></td>                    

                <td>
                    <input type="text" name="telefono_1" id="telefono_1" size="25" maxlength="20" required placeholder="Tel&eacute;fono Fijo" onkeypress="return validar(event)" /></td>

            </tr>
            <tr></tr>
            <tr>

                <td>
                    <input type="text" name="celular" id="celular" size="25" maxlength="20"  placeholder="Numero Celular" onkeypress="return validar(event)" /></td>

                <td>
                    <input type="email" name="e_mail" id="e_mail" size="25" maxlength="30" required placeholder="Ingrese su E-mail" />
                </td>  

                <td>
                    <input type="text" name="direccion" id="direccion" size="25" maxlength="30" required placeholder="Ingrese su Direcci&oacute;n"  /></td>               
            </tr>
            <tr></tr>
            <tr>
                <td  align="center" valign="bottom" colspan="3">
                    <input id="boton" type="submit" value="Guardar" />
                    <input id="boton1" type="button" value=" Volver " onclick="location = 'home.php'" />

                </td>
            </tr>
        </table>
    </form>