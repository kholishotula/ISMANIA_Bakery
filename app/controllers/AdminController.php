<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class AdminController extends Controller
{
	public function adminAction()
	{
		
    }
    
    public function edit_promoAction()
	{
		$promo = Promo::find();
		$this->view->promo = $promo;
	}
	
	public function add_promoAction()
	{
		$new_promo = new Promo();

		foreach ($this->request->getUploadedFiles() as $file)
		{
			$filename = $_FILES['photo_promo']['name'];
			$target_dir = "assets/";
			$target_file = $target_dir . $filename;
			$file->moveTo($target_file);
			$new_promo->photo = $target_file;
		}
		if ($new_promo->save() == false)
		{
			foreach ($new_promo->getMessages() as $message) {
				echo $message, "\n";
			}
		}
		else {
			$this->response->redirect("edit_promo");
		}
	}
	
	public function delete_promoAction()
	{
		if(!$this->request->hasQuery('id_promo')) {
			$this->response->redirect("edit_promo");
		}
		if($this->request->hasQuery('id_promo')) {
			$id_promo = $this->request->getQuery('id_promo');
		}
		$promo = Promo::findFirst("id='$id_promo'");
		if($promo !== false)
		{
			if ($promo->delete() === false) {
				?>
				<script type="text/javascript">
					alert('Sorry, we can not delete these promo right now');
				</script>
				<?php
			} else {
				?>
				<script type="text/javascript">
					alert('These promo has been deleted');
				</script>
				<?php
			}
			$this->response->redirect("edit_promo");
		}
	}
    
    public function edit_productAction()
	{
		$product = Product::find();
		$this->view->product = $product;
	}
	
	public function add_productAction()
	{
		$new_product = new Product();

		$name = $this->request->getPost('name');
		$category = $this->request->getPost('category');
		$price = $this->request->getPost('price');

		foreach ($this->request->getUploadedFiles() as $file)
		{
			$filename = $_FILES['photo']['name'];
			$target_dir = "assets/";
			$target_file = $target_dir . $filename;
			$file->moveTo($target_file);
			$new_product->photo = $target_file;
		}

		$new_product->name = $name;
		$new_product->category = $category;
		$new_product->price = $price;

		if ($new_product->save() == false)
		{
			foreach ($new_product->getMessages() as $message) {
				echo $message, "\n";
			}
		}
		else {
			$this->response->redirect("edit_product");
		}
	}
	
	public function delete_productAction()
	{
		if(!$this->request->hasQuery('id_product')) {
			$this->response->redirect("edit_product");
		}
		if($this->request->hasQuery('id_product')) {
			$id_product = $this->request->getQuery('id_product');
		}
		$product = Product::findFirst("id='$id_product'");
		if($product !== false)
		{
			if ($product->delete() === false) {
				?>
				<script type="text/javascript">
					alert('Sorry, we can not delete these product right now');
				</script>
				<?php
			} else {
				?>
				<script type="text/javascript">
					alert('These product has been deleted');
				</script>
				<?php
			}
			$this->response->redirect("edit_product");
		}
	}
    
    public function product_recommendationAction()
	{
		$product = Product_recom::find();
        $this->view->product = $product;
	}
};

?>