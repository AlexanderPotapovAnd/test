<?php

class Product{
    
    private $conn;
    private $table_name = "ad";
    
    public $id;
    public $title;
    public $text;
    public $img1;
    public $img2;
    public $img3;
    public $price;
    public $date;
    
    public function __construct($db) {
        $this->conn = $db;
    }
    
    function read() {
        $query = "SELECT * FROM ad ORDER BY date";
        
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        
        return $stmt;
    }
    
    function readOne() {
        $query = "SELECT * FROM ad WHERE id = ? LIMIT 0,1";
        
        $stmt = $this->conn->prepare($query);
        $stmt -> bindParam(1, $this->id);
        $stmt -> execute();
        
        $row = $stmt -> fetch(PDO::FETCH_ASSOC);
        
        $this->title = $row['title'];
        $this->text = $row['text'];
        $this->img1 = $row['img1'];
        $this->img2 = $row['img2'];
        $this->img3 = $row['img3'];
        $this->price = $row['price'];
        $this->date = $row['date'];
    }
    
    public function readPaging($from_record_num, $records_per_page) {
        $query = "SELECT * FROM ad ORDER BY date LIMIT ?, ?";
        
        $stmt = $this->conn->prepare($query);
        
        $stmt->bindParam(1, $from_record_num, PDO::PARAM_INT);
        $stmt->bindParam(2, $records_per_page, PDO::PARAM_INT);
        
        $stmt->execute();
        
        return $stmt;
    }
    
    public function count() {
        $query = "SELECT COUNT(*) as total_rows FROM ".$this->table_name."";
        
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        
        return $row['total_rows'];
    }
    
    function create() {
        $query = "INSERT INTO ".$this->table_name."SET title=:title, text=:text, img1=:img1, img2=:img2, img3=:img3, date:=date, price:=price";
        
        $stmt = $this->conn->prepare($query);
        
        $this->title = htmlspecialchars(strip_tags($this->title));
        $this->text = htmlspecialchars(strip_tags($this->text));
        $this->img1 = htmlspecialchars(strip_tags($this->img1));
        $this->img2 = htmlspecialchars(strip_tags($this->img2));
        $this->img3 = htmlspecialchars(strip_tags($this->img3));
        $this->date = htmlspecialchars(strip_tags($this->date));
        $this->price = htmlspecialchars(strip_tags($this->price));
        
        $stmt->bindParam(":title", $this->title);
        $stmt->bindParam(":text", $this->text);
        $stmt->bindParam(":img1", $this->img1);
        $stmt->bindParam(":img2", $this->img2);
        $stmt->bindParam(":img3", $this->img3);
        $stmt->bindParam(":date", $this->date);
        $stmt->bindParam(":price", $this->price);
        
        if($stmt->execute()){
            return true;
        }
        return false;
    }
}
