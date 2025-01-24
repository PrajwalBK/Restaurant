<html>
<link rel="stylesheet" href="css/conform.css">
<body background-image>
<style>

</style>

</body>
</html>

<?php
$con = mysqli_connect("localhost","root","","restaurantdb");
if(isset($_POST['sb']))
{
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$number= $_POST['number'];
$email = $_POST['email'];
$itmname = $_POST['itmname'];
$itmquantity = $_POST['itmquantity'];
$address= $_POST['address'];
$city= $_POST['city'];
$citypin= $_POST['citypin'];



$sql = "INSERT INTO orderonline(FNAME,LNAME,NUMBER,EMAIL,ITEMNAME,ITEMQUANTITY,ADDRESS,CITY,PINCODE) VALUES('$fname','$lname','$number','$email','$itmname','$itmquantity','$address','$city','$citypin')";

$rs = mysqli_query($con, $sql);
}
if($rs)
{
	// echo "Your Order is Conformed";
	echo "<div class='conform'>
		<p>Your Order as been Conformed</p>
	</div> <br>";  
	echo "<a href='menu.html' class='btn'>Go To Menu</a>";

}

?>



