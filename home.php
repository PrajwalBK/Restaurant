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
$lname = $_POST['lname'];
$number= $_POST['number'];
$email = $_POST['email'];
$person= $_POST['person'];
$sections=$_POST['sections'];
// $tabnumber= $_POST['tabnumber'];
$date = $_POST['date'];

$sql = "INSERT INTO booktable(FNAME,LNAME,NUMBER,EMAIL,PERSONS,SECTIONS,DATE) VALUES('$fname','$lname','$number','$email','$person','$sections','$date')";

$rs = mysqli_query($con, $sql);
 }
if($rs)
{
	echo "<div class='conform'>
	<p>Your Table as been Conformed</p>
	</div> <br>";  
	echo "<a href='menu.html' class='btn'>Go To Menu</a>";
}


