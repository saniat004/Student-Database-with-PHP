
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
	 $first_name = $_POST['subjectName'];
	 $last_name = $_POST['lecturer'];
	 $number = $_POST['numberOfHours'];
	

	 $sql = "INSERT INTO subject_hossain_50045 (subjectName_50045, Lecturer_50045, numberOfHours_50045)
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