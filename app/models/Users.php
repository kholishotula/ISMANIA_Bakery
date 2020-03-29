<?php

use Phalcon\Mvc\Model;

class Users extends Model
{
    public $Member_ID;
    public $Member_KTP;
    public $Member_name;
    public $Member_birthdate;
    public $Member_gender;
    public $Member_address;
    public $Member_occupation;
    public $Member_telephone;
    public $Member_password;
    public $Member_photo;
    public function initialize()
    {
      $this->setSource('membership');
    }

}

?>