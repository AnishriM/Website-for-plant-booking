<?php
$name=$_POST['name1'];
$email=$_POST['email1'];
$phone=$_POST['phone1'];
$message=$_POST['message1'];
//echo $message;
$con=mysqli_connect("localhost","root");
if(!$con)
{
    echo "Unable to connect";
}
if(!mysqli_select_db($con,"tree"))
{
    echo "Unable to open database";
}
$query1="INSERT INTO contact_us(id,name,email,message,phone) VALUES('','$name','$email','$message','$phone')";
$data=mysqli_query($con,$query1);
echo "<script>window.alert('Message successfully Done!');window.location.href='http://localhost/web/index.php'</script>";

//  header("Location:http://localhost/web/index.php");
 ?>
