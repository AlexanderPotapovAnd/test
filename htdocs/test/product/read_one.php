<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header("Content-Type: application/json");

include_once '../config/database.php';
include_once '../objects/product.php';

$database = new Database();
$db = $database->getConnection();

$product = new Product($db);

$product->id = isset($_GET['id']) ? $_GET['id'] : die();

$product->readOne();

if($product->title!=null) {
    $product_arr = array(
        "id" => $product->id,
        "title" => $product->title,
        "text" => $product->text,
        "img1" => $product->img1,
        "img2" => $product->img2,
        "img3" => $product->img3,
        "price" => $product->price,
        "date" => $product->date
    );
    
    http_response_code(200);
    echo json_encode($product_arr);
}
else {
    http_response_code(404);
    echo json_encode(array("message" => "Товар не существует."), JSON_UNESCAPED_UNICODE);
}