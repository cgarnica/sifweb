<?php
include ("../controlador/conexion.php");
session_start();
$usrForm = $_POST["username"];
$pswForm = $_POST["password"];
insper($usrForm, $pswForm);
	
function insper($usrForm, $pswForm){	
	$c = "SELECT * FROM usuario WHERE id_usuario='".$usrForm."' AND clave ='".$pswForm."'";
	$conexionBD = new conexion();
	$conexionBD->conectarBD();
	$data=$conexionBD->ejeCon($c,0);
	
	$countR = count($data);
	if ($countR == 1){
		$_SESSION["user"] = $data[0]['nombre']." ".$data[0]['apellido'];
		$_SESSION["idUser"] = $data[0]['id_usuario'];
		$_SESSION["documento"] = isset($data[0]['id_usuario']) ? $data[0]['id_usuario']:NULL;
		$_SESSION["perfil"] = isset($data[0]['perfil_id']) ? $data[0]['perfil_id']:NULL;
		$_SESSION["autentificado"]= 10;
		echo "<script type='text/javascript'>window.location='../home.php';</script>";
	}else{
		echo "<script type='text/javascript'>window.location='../index.php?errorusuario=si';</script>";
	}
}
?>