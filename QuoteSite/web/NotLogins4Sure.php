<?php
	#To mysql.sql import
	/*
	CREATE USER 'quoteUser'@'localhost' IDENTIFIED BY 'NotThatGREATOFaPassword';
	GRANT ALL ON quotes.* TO 'quoteUser'@'localhost';
	FLUSH PRIVILEGES;
	*/

   	$servername = "localhost";
	$SQLusername = "quoteUser";
	$SQLpassword = "NotThatGREATOFaPassword";
	$dbname = "quotes";
	
	//create new connection object
	$conn = new mysqli($servername, $SQLusername, $SQLpassword, $dbname);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 
	#else { echo "Connected successfully to database. "  . "<br>"; }
?>