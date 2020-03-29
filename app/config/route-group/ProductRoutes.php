<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class ProductRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'product',

		]);

		$this->addGet(
			'/Product',
			[
				'action' => 'product',
			]
		);

		$this->addGet(
			'/add',
			[
				'action' => 'add',
			]
		);
		
		$this->addPost(
			'/Product',
			[
				'action' => 'store',
			]
		);
	}
}

?>