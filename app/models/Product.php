<?php

use Phalcon\Mvc\Model;

class Product extends Model
{
    public $id;
    public $name;
    public $category;
    public $price;
    public $photo;
    public function initialize()
    {
      $this->setSource('product');
    }

}

?>