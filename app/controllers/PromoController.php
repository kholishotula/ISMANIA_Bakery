<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class PromoController extends Controller
{
	public function promoAction()
	{
		$promo1 = Promo::find("id%3='1'");
		$this->view->promo1 = $promo1;

		$promo2 = Promo::find("id%3='2'");
		$this->view->promo2 = $promo2;

		$promo3 = Promo::find("id%3='0'");
		$this->view->promo3 = $promo3;
	}
};

?>