
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "l11_hossain_portal_50045";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['save']))
{	 
	 $first_name = $_POST['name'];
	 $last_name = $_POST['Surname'];
	 $number = $_POST['number'];
	

	 $sql = "INSERT INTO student_hossain_50045 (Name_50045,SurName_50045,studentID_50045)
	 VALUES ('$first_name','$last_name','$number')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}
?>