<!DOCTYPE html>
<html>
<head>
<title>Unit 4 Exercise lm66</title>
</head>
<body>
<h1>My Golfing Team</h1>
<h4>Name: Lakshita Madhavan</h4>
<h4>UCID: lm66</h4>
<h4>Course and Section: IT-202-001 Internet Applications</h4>
<?php
error_log("\$_GET " . print_r($_GET, true));
$db = new mysqli("sql1.njit.edu", 'lm66', 'SQL20212lm!', 'lm66', 3306);
$golferid = $_GET['golferid'];
$score = $_GET['score'];
$query = "INSERT INTO games (golferid, score) VALUES (?, ?)";
$stmt = $db->prepare($query);
if($stmt == false) { echo "ERROR:" . $db->errno . ' ' . $db->error; }
$stmt->bind_param(
   "ii",
   $golferid,
   $score
);
$result = $stmt->execute();
$db->close();
if ($result) {
   echo "<h2>New game's score successfully added</h2>\n";
} else {
   echo "<h2>Sorry, there was a problem adding that game's score</h2>\n";
}
date_default_timezone_set("America/New_York");
echo "The date and time is " . date("D M j h:i:sa T Y");
?>
</body>
</html>
