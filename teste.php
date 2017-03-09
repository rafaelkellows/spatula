<?php 
require_once 'PagSeguroLibrary/PagSeguroLibrary.php';
$paymentRequest = new PagSeguroPaymentRequest();
$paymentRequest‐>addItem('0001','asdas',5,2430.99);
?>