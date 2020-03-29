<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class HomeRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'home',

		]);

		$this->addGet(
			'/Home',
			[
				'action' => 'home',
			]
        );
	}
}

?>