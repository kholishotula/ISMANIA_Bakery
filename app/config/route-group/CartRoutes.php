<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class CartRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'cart',

		]);

		$this->addGet(
			'/MyCart',
			[
				'action' => 'mycart',
			]
		);

		$this->addPost(
			'/edit_cart',
			[
				'action' => 'edit',
			]
		);
		
		$this->addGet(
			'/clear',
			[
				'action' => 'clear',
			]
		);
		
		$this->addGet(
			'/done',
			[
				'action' => 'done',
			]
        );
	}
}

?>