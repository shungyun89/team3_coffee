<?php
require __DIR__ . '/layout/connect_db.php';

header('Content-Type: application/json');

// echo json_encode($_POST); exit;

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

if(empty($_POST['oder_id'])){
    echo json_encode($output, JSON_UNESCAPED_UNICODE);
    exit;
}



// TODO: 欄位檢查


$sql = "UPDATE `orders` SET
        `fk_condition_id`=?
        WHERE `id`=?";

$stmt = $pdo->prepare($sql);

$stmt->execute([
    $_POST['status'],
    $_POST['oder_id'],
]);


$output['rowCount'] = $stmt->rowCount(); // 修改資料的筆數
if($stmt->rowCount()){
    $output['error'] = '';
    $output['success'] = true;
} else {
    $output['error'] = '資料沒有修改';
}


echo json_encode($output, JSON_UNESCAPED_UNICODE);
