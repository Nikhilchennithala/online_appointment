		<!--Inserting Doctor datails   -->

<?php 
include('connection.php');
if(isset($_POST['submit']))
{
	$DocName=$_POST['doc_name'];
	$Phone=$_POST['phoneno'];
	$Email=$_POST['email'];
	$Qualification=$_POST['qual'];
	$Certificate=$_POST['cert'];
	$Department=$_POST['dept'];
	$Clinic_address=$_POST['address'];
	$Clinic_timing=$_POST['time'];
	$Username=$_POST['name'];
	$Password=$_POST['password'];
	
	
        if (!preg_match("/^[A-Za-z' -]{1,50}$/",$DocName)) 
          {
            echo "Enter valid name"; 
          }
        else if(preg_match('/^[0-9]{10}+$/', $Phone) != true)
        {
            echo "Enter valid mobile number";
        }
        else if(!preg_match("/^[A-Za-z0-9.,' -]{1,200}$/", $Email))
        {
            echo "Enter valid email address";
        }
		else if(!preg_match("/^[A-Za-z0-9.,' -]{1,200}$/", $Qualification))
        {
            echo "Enter valid qualification";
        }else if(!preg_match("/^[A-Za-z0-9.,' -]{1,200}$/", $Certificate))
        {
            echo "Enter valid certificate name";
        }else if(!preg_match("/^[A-Za-z0-9.,' -]{1,200}$/", $Department))
        {
            echo "Enter valid department name";
        }else if(!preg_match("/^[A-Za-z0-9.,' -]{1,200}$/", $Clinic_address))
        {
            echo "Enter valid clinic name";
        }else if(!preg_match("/^[A-Za-z0-9.,' -]{1,200}$/", $Clinic_timing))
        {
            echo "Enter valid time";
        }else if(!preg_match("/^[A-Za-z0-9.,' -]{1,200}$/", $Username))
        {
            echo "Enter valid username";
        }
        else if(strlen($Password) < 8)
        {
            echo "Failed! Enter password atleast 8 characetrs";
        }
       
        else
        {

	$sql="insert into doctorreg(name,Phone,email,qualification,certificate_no,department,clinic_address,clinic_timing,username,password) values ('".$DocName."','".$Phone."','".$Email."','".$Qualification."','".$Certificate."','".$Department."','".$Clinic_address."','".$Clinic_timing."','".$Username."','".$Password."')";
	if(!$result=$conn->query($sql))
	{
		die("there was an error in running the query ['.$conn->error.']");
	}
	else
	{
		header('location:patientreg.php');
	}
	}
}
mysqli_close($conn);
?>
