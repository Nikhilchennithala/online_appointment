		<!--Database connection php -->

<?php
$servername="localhost";
$username="root";
$password="";
$dbname="consultancy";
$conn=new mysqli($servername,$username,$password,$dbname);
if($conn->connect_error)
{
	die("connection failed:".$conn->connect_error);
}
// echo "connected success"
?>