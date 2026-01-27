<?php
require 'db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $message = $_POST["message"];

   
    $stmt = $conn->prepare("SELECT id FROM regriszt WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        die("A megadott email cím már regisztrálva van.");
    }
    $stmt->close();

  
    $stmt = $conn->prepare("INSERT INTO regriszt (email, telefonszam, message, name) VALUES (?, ?, ?, ?)");
    if (false === $stmt) {
        die('Beszúrás hiba: ' . htmlspecialchars($conn->error));
    }

    $stmt->bind_param("ssss", $email, $phone, $message, $name);

    if ($stmt->execute()) {
         header("Location: index.html");
    exit;
    } else {
        echo "Hiba: " . $stmt->error;
    }
    
    $stmt->close();
    $conn->close();
} else {
    header("Location: index.html");
    exit;
}
?>


