<?php

use Phalcon\Mvc\Model;

class Promo extends Model
{
    public $id;
    public $photo;
    public function initialize()
    {
      $this->setSource('promo');
    }

}

?>