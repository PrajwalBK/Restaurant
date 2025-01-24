<html>
<link rel="stylesheet" href="css/conform1.css">
<body background-image>

</body>
</html>
<?php
$con = mysqli_connect("localhost","root","","restaurantdb");
if(isset($_POST['sb']))
{
$fname = $_POST['fname'];
$number= $_POST['number'];
$email = $_POST['email'];
$person= $_POST['person'];
$sections= $_POST['sections'];
// $tabnumber= $_POST['tabnumber'];
$itmname = $_POST['itmname'];
$itmquantity = $_POST['itmquantity'];


$sql = "INSERT INTO `orderhear`(NAME,NUMBER,EMAIL,PERSONS,SECTIONS,ITEMNAME,ITEMQUANTITY) VALUES('$fname','$number','$email','$person','$sections','$itmname','$itmquantity')";

$rs = mysqli_query($con, $sql);
}
if($rs)
{
	echo "<div class='conform'>
		<p>Your Order as been Conformed</p>
	</div> <br>";  
	echo "<a href='menu.html' class='btn'>Go To Menu</a>";
	
}

?>

