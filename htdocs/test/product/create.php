<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../config/database.php';
include_once '../objects/product.php';

$database = new Database();
$db = $database->getConnection();

$product = new Product($db);

$data = json_decode(file_get_contents("php://input"));
echo json_encode($data);

if(
    !empty($data->title) &&
    !empty($data->text) &&
    !empty($data->img1) &&
    !empty($data->price)
) {
    $product->title = $data->title;
    $product->text = $data->text;
    $product->img1 = $data->img1;
    $product->img2 = $data->img2;
    $product->img3 = $data->img3;
    $product->date = date('Y-m-d H:i:s');
    $product->price = $data->price;
    
    if($product->create()) {
        http_response_code(201);
        echo json_encode(array("message" => "Объявление создано."), JSON_UNESCAPED_UNICODE);
    } 
    else {
        http_response_code(503);
        echo json_encode(array("message" => "Невозможно создать объявление."), JSON_UNESCAPED_UNICODE);
    }
}
else {
    http_response_code(400);
        echo json_encode(array("message" => "Невозможно создать объявление. Данные не полные"), JSON_UNESCAPED_UNICODE);
}