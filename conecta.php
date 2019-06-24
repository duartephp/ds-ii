<?php
	$usuario = "root";
	$senha = "usbw";
	$host = "localhost";
	$banco = "bd_restaurante";
	try{
		$conexao = new PDO ('mysql:host=' . $host . ':3307;dbname=' . $banco, $usuario, $senha);
		
	}catch(PDOException $e){
		echo "Erro:" . $e->getMessage();
	}
?>