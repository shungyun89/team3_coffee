<?php
require  '../layout/connect_db.php';

header('Content-Type: application/json');
// 輸出的資料格式
$output = [
    'success' => false,
    'error' => '沒有表單資料',
    'code' => 0,
    'postData' => [],
    'rowCount' => 0,
];
// var_dump($_POST);
$output['postData'] = $_POST;  // 讓前端做資料查看,資料是否一致

// if(empty($_POST['title'])){
//     echo json_encode($output, JSON_UNESCAPED_UNICODE);
//     exit;
// }



// TODO: 欄位檢查


$sql = "UPDATE `activity` SET  
        `title`=?,
        `start_time`=?,
        `end_time`=?,
        `discount`=?,
        `contents`=?
        WHERE `id`=?";


$stmt = $pdo->prepare($sql);

$stmt->execute([
    $_POST['title'],
    $_POST['start-time'],
    $_POST['end-time'],
    $_POST['discount'],
    $_POST['contents'],
    $_POST['id'],
]);


$output['rowCount'] = $stmt->rowCount(); // 修改資料的筆數
if($stmt->rowCount()){
    $output['error'] = '';
    $output['success'] = true;
} else {
    $output['error'] = '資料沒有修改';
}


echo json_encode($output, JSON_UNESCAPED_UNICODE);

