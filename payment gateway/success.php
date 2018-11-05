<?php
  session_start();
  $tname =$_SESSION['tname'];
  $name= $_SESSION['name'];
  $email= $_SESSION['email'];
  $tnum= $_SESSION['tnum'];
  $message= $_SESSION['message'];
  $phone=$_SESSION['phone'];
  $date1=$_SESSION['tdate'];
  $payment_id=$_GET['payment_id'];
$con=mysqli_connect("localhost","root");
if(!$con)
{
    echo "Unable to connect";
}
if(!mysqli_select_db($con,"tree"))
{
    echo "Unable to open database";
}
$query1="INSERT INTO info(id,name,email,phone,tnname,tnum,payment_id,message,date1) VALUES('','$name','$email','$phone','$tname','$tnum','$payment_id','$message','$date1')";
$data=mysqli_query($con,$query1);
echo "<script>window.alert('Transaction successfully Done!');window.location.href='http://localhost/web/index.php'</script>";

//  header("Location:http://localhost/web/index.php");
  /*require 'C:/xampp/htdocs/firebase/vendor/autoload.php';
  use Kreait\Firebase;
  use Kreait\Firebase\Factory;
  use Kreait\Firebase\ServiceAccount;
  $serviceAccount = ServiceAccount::fromJsonFile('C:/xampp/htdocs/firebase/vendor/kreait/firebase-php/google-service-account.json');
  $apiKey = "AIzaSyAidXBxnzxm8Ne8YtEl2jN_8OEsRKpG0GM";
  $firebase = (new Factory)
    ->withServiceAccountAndApiKey($serviceAccount, $apiKey)
    ->withDatabaseUri("https://savetree-74300.firebaseio.com")
    ->create();
  $database = $firebase->getDatabase();
  $newPost = $database
    ->getReference('blog/posts')
    ->push([
        'title' => 'Post title',
        'body' => 'This should probably be longer.'
    ]);*/
 ?>
