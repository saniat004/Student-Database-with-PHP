
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
	 $first_name = $_POST['student_id'];
	 $last_name = $_POST['subject_id'];
	 $number = $_POST['question_id'];
     $number1 = $_POST['mark'];
    
     
	

	 $sql = "INSERT INTO exam_hossain_50045 (student_id_50045,subject_id_50045,question_id_50045,mark_50045)
	 VALUES ('$first_name','$last_name','$number','$number1')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}


  

    
    
  
?>