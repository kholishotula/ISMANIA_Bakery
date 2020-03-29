<?php

use Phalcon\Mvc\Model;

class Cart extends Model
{
    public $ktp_member;
    public $order_date;
    public $brownies;
    public $bolu_zebra;
    public $choco_lava;
    public $japanese_cheesecake;
    public $blackforest;
    public $roll_cake;
    public $cheesecake_jar;
    public $tart;
    public $tiramisu;
    public $donuts;
    public $cheese_stick;
    public $roti_sobek;
    public $pizza;
    public $mozarella_stick;
    public $roti_pisang;
    public $burger;
    public $roti_abon;
    public $lidah_kucing;
    public $butter_cookies;
    public $kue_sagu;
    public $chocochip;
    public $kue_semprit;
    public $kue_nastar;
    public $kue_putri;
    public $kue_kastengel;
    public $kue_keciput;
    public $Total;
    public function initialize()
    {
      $this->setSource('list_items');
    }

}

?>