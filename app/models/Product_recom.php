<?php

use Phalcon\Mvc\Model;

class Product_recom extends Model
{
    public $name;
    public $product;
    public $desc;
    public $photo;
    public function initialize()
    {
      $this->setSource('product_recom');
    }

}

?>