<?php
// $arr = $_POST["item"];

require 'connect-db.php';

$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

$sql = "DELETE FROM `blogs`  WHERE id = $id";

$stmt = $pdo->query($sql);

// echo $stmt->rowCount(); // 刪除幾筆
if (!empty($_SERVER['HTTP_REFERER'])) {
    // 從哪裡來回哪裡去
    header('Location: blog.php');
} else {
    header('Location:blog.php');
}