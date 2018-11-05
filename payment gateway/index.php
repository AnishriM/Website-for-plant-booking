<?php
session_start();
$tname=$_GET['name1'];
$name=$_POST['name'];
$email=$_POST['email'];
$tnum=$_POST['tnum'];
$message=$_POST['message'];
$tdate=$_POST['tdate'];
$phone=$_POST['phone'];
$_SESSION['tname']=$tname;
$_SESSION['name']=$name;
$_SESSION['email']=$email;
$_SESSION['tnum']=$tnum;
$_SESSION['message']=$message;
$_SESSION['tdate']=$tdate;
$_SESSION['phone']=$phone;

$con=mysqli_connect("localhost","root");
if(!$con)
{
    echo "Unable to connect";
}
if(!mysqli_select_db($con,"tree"))
{
    echo "Unable to open database";
}
$query1="SELECT * from tdata";
$data=mysqli_query($con,$query1);
$arrayx=array();
if(mysqli_num_rows($data)>0)
{
  while($object=mysqli_fetch_object($data))
  {
    if($object->name==$tname)
    {
      $price=((int)$tnum)*($object->price);
      break;
    }
  }
}


$ch = curl_init();


//if(mysqli_num_rows($data)>0)
//$object=mysqli_fetch_object($data);
//if($object->password==$value1)

$urlx="http://localhost/instamojo/success.php";
curl_setopt($ch, CURLOPT_URL, 'https://test.instamojo.com/api/1.1/payment-requests/');
curl_setopt($ch, CURLOPT_HEADER, FALSE);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
curl_setopt($ch, CURLOPT_HTTPHEADER,
            array("X-Api-Key:test_a21a8b7486355980402f2312eb6",
                  "X-Auth-Token:test_bf67ca5929263803e06816e2598"));
$payload = Array(
    'purpose' => $tname,
    'amount' => $price,
    'phone' => $phone,
    'buyer_name' => $name,
    'redirect_url' => $urlx,
    'send_email' => true,
    'webhook' => 'http://www.example.com/webhook/',
    'send_sms' => true,
    'email' => $email,
    'allow_repeated_payments' => false
);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($payload));
$response = curl_exec($ch);
curl_close($ch);

$json_decode=json_decode($response,true);
$long_url=$json_decode['payment_request']['longurl'];
echo $long_url;
//print_r($json_decode);
header('Location:'.$long_url);

?>
