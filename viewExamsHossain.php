<!DOCTYPE html>
<html>
<body>
<center>

<h1>View all Exams  </h1>
        <h1>  Md Saniat Hossain</h1
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

$sql = "SELECT * FROM  exam_hossain_50045";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {


        


        echo "<br> id: ". $row["Exam_id_50045"]. " |||| student id : ". $row["student_id_50045"]. "  |||| subject id :  " . $row["subject_id_50045"] . "  ||||  question id :  " . $row["question_id_50045"] . "  |||| mark :  " . $row["mark_50045"]  . "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>


<div class="topnav">


    <a href="IndexHossain.html">HOME</a>
    <a href="addStudents_Hossain.php">ADDStudent</a>
    <a href="viewStudentsHossain.php">ViewStudent</a>
    <a href="addQuestions_Hossain.php">ADDQuestions</a>
    <a href="viewQuestionsHossain.php">ViewQuestions</a>
    <a href="addSubject_Hossain.php">ADDSubject</a>
    <a href="viewSubjectsHossain.php">ViewSubject</a>
    <a href="addExams_Hossain.php">AddExam</a>
    <a href="viewExamsHossain.php">ViewExams</a>

    

    
    
  </div>
</center>


</body>
</html>