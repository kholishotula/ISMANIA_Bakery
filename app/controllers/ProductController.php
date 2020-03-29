<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class ProductController extends Controller
{
	public function productAction()
	{
		$prod1 = Product::find("category='1'");
		$this->view->product1 = $prod1;

		$prod2 = Product::find("category='2'");
		$this->view->product2 = $prod2;
		
		$prod3 = Product::find("category='3'");
		$this->view->product3 = $prod3;
	}

	public function addAction()
	{
        $id = $this->session->get('auth')['id'];
        $user_cart = Cart::findFirst("ktp_member='$id'");

        if(!$this->request->hasQuery('id_product')) {
			$this->response->redirect("Product");
		}
		if($this->request->hasQuery('id_product')) {
			$id_product = $this->request->getQuery('id_product');
        }
        $product = Product::findFirst("id='$id_product'");

		if($user_cart)
		{
			if($id_product==1) {$user_cart->brownies += 1;}
			if($id_product==2) {$user_cart->bolu_zebra += 1;}
			if($id_product==4) {$user_cart->choco_lava += 1;}
			if($id_product==5) {$user_cart->japanese_cheesecake += 1;}
			if($id_product==6) {$user_cart->blackforest += 1;}
			if($id_product==7) {$user_cart->roll_cake += 1;}
			if($id_product==8) {$user_cart->cheesecake_jar += 1;}
			if($id_product==9) {$user_cart->tart += 1;}
			if($id_product==10) {$user_cart->tiramisu += 1;}
			if($id_product==11) {$user_cart->donuts += 1;}
			if($id_product==12) {$user_cart->cheese_stick += 1;}
			if($id_product==13) {$user_cart->roti_sobek += 1;}
			if($id_product==14) {$user_cart->pizza += 1;}
			if($id_product==15) {$user_cart->mozarella_stick += 1;}
			if($id_product==16) {$user_cart->roti_pisang += 1;}
			if($id_product==17) {$user_cart->burger += 1;}
			if($id_product==18) {$user_cart->roti_abon += 1;}
			if($id_product==19) {$user_cart->lidah_kucing += 1;}
			if($id_product==20) {$user_cart->butter_cookies += 1;}
			if($id_product==21) {$user_cart->kue_sagu += 1;}
			if($id_product==22) {$user_cart->chocochip += 1;}
			if($id_product==23) {$user_cart->kue_semprit += 1;}
			if($id_product==24) {$user_cart->kue_nastar += 1;}
			if($id_product==25) {$user_cart->kue_putri += 1;}
			if($id_product==26) {$user_cart->kue_kastengel += 1;}
			if($id_product==28) {$user_cart->kue_keciput += 1;}
			$user_cart->Total += $product->price;

			$user_cart->save();
		}
		$this->response->redirect("Product");
    }

	public function storeAction()
	{
		$product_recom = new Product_recom();

		$name = $this->request->getPost('name');
		$product = $this->request->getPost('product');
		$desc = $this->request->getPost('desc');

		$photo = file_get_contents($_FILES['photo']['tmp_name']);
		$file = base64_encode($photo);

		$product_recom->name = $name;
		$product_recom->product = $product;
		$product_recom->desc = $desc;
		$product_recom->photo = $file;

		if ($product_recom->save() == false)
		{
			foreach ($product_recom->getMessages() as $message) {
				echo $message, "\n";
			}
		}
		else {
			$this->response->redirect("Product");
		}
	}
};

?>