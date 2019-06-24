<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Cardápio</title>
<link href="estilophp.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
</head>
<body>
<div id="corpo">
<div id="title">
<h1>Acompanhe o pedido</h1>
</div>

<?php	


include "conecta.php";


$nome=$_POST['nome'];
$endereco=$_POST['endereco'];
$bairro=$_POST['bairro'];
$telefone=$_POST['telefone'];
$prato=$_POST['prato'];
$bebida=$_POST['bebida'];
$tamanho=$_POST['tamanho'];

$sql ="INSERT INTO tb_pedido(nome,endereco,bairro,telefone,prato,bebida,tamanho)
		VALUES(?,?,?,?,?,?,?)";
		$stmt = $conexao->prepare($sql);
		$stmt->bindParam(1,$nome);
		$stmt->bindParam(2,$endereco);
		$stmt->bindParam(3,$bairro);
		$stmt->bindParam(4,$telefone);
		$stmt->bindParam(5,$prato);
		$stmt->bindParam(6,$bebida);
		$stmt->bindParam(7,$tamanho);
		
		$rs = $stmt->execute();
		if($rs)
		 {
		   echo "<script>alert('Pedido efetuado com sucesso!');</script>";
		   	   		   
	echo "Sr(a) ".$nome.", <br><br>";
	echo "Seu pedido está em produção e em breve será enviado! <br><br>";
	echo " Endereço de entrega: ".$endereco. ", bairro ".$bairro.".<br><br>";
	echo "Qualquer dúvida entraremos em contato no seguinte telefone: ".$telefone.".<br><br>";
	echo "Seu pedido: <br><br> Prato: ".$prato. "<br> Bebida: ".$bebida." <br> Tamanho: ".$tamanho;
		   
		 }
		  else
		 {
		   echo "<script>alert('Falha ao efetuar o pedido!');</script>";

		 }		
		 
		 
?>
</div>
</body>
</html>