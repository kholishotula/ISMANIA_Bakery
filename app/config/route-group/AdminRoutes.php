<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class AdminRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'admin',

		]);

		$this->addGet(
			'/Admin',
			[
				'action' => 'admin',
			]
		);
		
		$this->addGet(
			'/edit_promo',
			[
				'action' => 'edit_promo',
			]
		);
		
		$this->addPost(
			'/edit_promo',
			[
				'action' => 'add_promo',
			]
		);

		$this->addGet(
			'/delete_promo',
			[
				'action' => 'delete_promo',
			]
		);

        $this->addGet(
			'/edit_product',
			[
				'action' => 'edit_product',
			]
		);
		
		$this->addPost(
			'/edit_product',
			[
				'action' => 'add_product',
			]
		);

		$this->addGet(
			'/delete_product',
			[
				'action' => 'delete_product',
			]
		);

        $this->addGet(
			'/product_recommendation',
			[
				'action' => 'product_recommendation',
			]
        );
	}
}

?>