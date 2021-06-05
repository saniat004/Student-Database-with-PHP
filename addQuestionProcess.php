

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
	 $first_name = $_POST['Question'];
	 $last_name = $_POST['Answer1'];
	 $number = $_POST['Answer2'];
     $number1 = $_POST['Answer3'];
     $number2 = $_POST['correct_answer'];
     
	

	 $sql = "INSERT INTO questions_hossain_50045 (question_50045,answer_1_50045,answer_2_50045,answer_3_50045,correct_answer_50045)
	 VALUES ('$first_name','$last_name','$number','$number1','$number2')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}


  

    
    
  
?>





