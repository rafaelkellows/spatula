<?php
	$email = 'rafaelkellows86@gmail.com';
	$token = '4318948214704E0DAF33E560549F5ED2';
	$url = 'https://ws.pagseguro.uol.com.br/v2/checkout/?email=' . $email . '&token=' . $token;

  $itens = ( isset($_REQUEST["itens"] ) ) ? $_REQUEST["itens"] : 0 ;
  $currency = ( isset($_REQUEST["currency"] ) ) ? $_REQUEST["currency"] : '' ;
  $reference = ( isset($_REQUEST["reference"] ) ) ? $_REQUEST["reference"] : '' ;
  $senderName = ( isset($_REQUEST["senderName"] ) ) ? $_REQUEST["senderName"] : '' ;
  $senderAreaCode = ( isset($_REQUEST["senderAreaCode"] ) ) ? $_REQUEST["senderAreaCode"] : '' ;
  $senderPhone = ( isset($_REQUEST["senderPhone"] ) ) ? $_REQUEST["senderPhone"] : '' ;
  $senderEmail = ( isset($_REQUEST["senderEmail"] ) ) ? $_REQUEST["senderEmail"] : '' ;
	$shippingType = ( isset($_REQUEST["shippingType"] ) ) ? $_REQUEST["shippingType"] : '' ;
	$shippingAddressStreet = ( isset($_REQUEST["shippingAddressStreet"] ) ) ? $_REQUEST["shippingAddressStreet"] : '' ;
	$shippingAddressNumber = ( isset($_REQUEST["shippingAddressNumber"] ) ) ? $_REQUEST["shippingAddressNumber"] : '' ;
	$shippingAddressDistrict = ( isset($_REQUEST["shippingAddressDistrict"] ) ) ? $_REQUEST["shippingAddressDistrict"] : '' ;
	$shippingAddressComplement = ( isset($_REQUEST["shippingAddressComplement"] ) ) ? $_REQUEST["shippingAddressComplement"] : '' ;
	$shippingAddressPostalCode = ( isset($_REQUEST["shippingAddressPostalCode"] ) ) ? $_REQUEST["shippingAddressPostalCode"] : '' ;
	$shippingAddressCity = ( isset($_REQUEST["shippingAddressCity"] ) ) ? $_REQUEST["shippingAddressCity"] : '' ;
	$shippingAddressState = ( isset($_REQUEST["shippingAddressState"] ) ) ? $_REQUEST["shippingAddressState"] : '' ;
	$shippingAddressCountry = ( isset($_REQUEST["shippingAddressCountry"] ) ) ? $_REQUEST["shippingAddressCountry"] : '' ;
	
	$url = $_SERVER['REQUEST_URI'];
	$exploded = array();
	parse_str($url, $exploded);
	//$values = parse_url($url);
	//$host = explode('.',$values['host']);

	$xml = '<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>';
	$xml .=	'<checkout>';
	$xml .=	'    <currency>'.$currency.'</currency>';
	$xml .=	'    <redirectURL>http://www.spatula.com.br/paginaDeRedirecionamento/</redirectURL>';
	$xml .=	'    <items>';
	
	for ($x = 1; $x <= $itens; $x++) {
	$xml .=	'        <item>';
	$xml .=	'            <id>'.$exploded['itemId'.$x].'</id>';
	$xml .=	'            <description>'.$exploded['itemDescription'.$x].'</description>';
	$xml .=	'            <amount>'.$exploded['itemAmount'.$x].'</amount>';
	$xml .=	'            <quantity>'.$exploded['itemQuantity'.$x].'</quantity>';
	$xml .=	'            <weight>'.$exploded['itemWeight'.$x].'</weight>';
	$xml .=	'        </item>';
	} 

	$xml .=	'    </items>';
	$xml .=	'		 <reference>'.$reference.'</reference>';
	$xml .=	'    <sender>';
	$xml .=	'        <name>'.$senderName.'</name>';
	$xml .=	'        <email>'.$senderEmail.'</email>';
	$xml .=	'        <phone>';
	$xml .=	'            <areaCode>'.$senderAreaCode.'</areaCode>';
	$xml .=	'            <number>'.$senderPhone.'</number>';
	$xml .=	'        </phone>';
	$xml .=	'    </sender>';
	$xml .=	'		 <shipping>';
	$xml .=	'        <type>'.$shippingType.'</type>';
	$xml .=	'        <address>';
	$xml .=	'            <street>'.$shippingAddressStreet.'</street>';
	$xml .=	'            <number>'.$shippingAddressNumber.'</number>';
	$xml .=	'            <complement>'.$shippingAddressComplement.'</complement>';
	$xml .=	'            <district>'.$shippingAddressDistrict.'</district>';
	$xml .=	'            <postalCode>'.$shippingAddressPostalCode.'</postalCode>';
	$xml .=	'            <city>'.$shippingAddressCity.'</city>';
	$xml .=	'            <state>'.$shippingAddressState.'</state>';
	$xml .=	'            <country>'.$shippingAddressCountry.'</country>';
	$xml .=	'        </address>';
	$xml .=	'    </shipping>';
	$xml .=	'</checkout>';
	$curl = curl_init($url);
	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($curl, CURLOPT_HTTPHEADER, Array('Content-Type: application/xml; charset=ISO-8859-1'));
	curl_setopt($curl, CURLOPT_POSTFIELDS, $xml);

	if($xml == 'Unauthorized'){
		echo '0';
		exit;
	}

	$xml = curl_exec($curl);
	curl_close($curl);

	$xml = simplexml_load_string($xml);

	if(count($xml -> error) > 0){
    echo '0';
	}else{
		echo $xml -> code;		
	}

	print 'code '.$xml->code;
	//header('Location: https://pagseguro.uol.com.br/v2/checkout/payment.html?code=' . $xml -> code)

?>