<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class PromoRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'promo',

		]);

		$this->addGet(
			'/Promo',
			[
				'action' => 'promo',
			]
		);
		
		// $this->addPost(
		// 	'/Product',
		// 	[
		// 		'action' => 'store',
		// 	]
		// );
	}
}

?>