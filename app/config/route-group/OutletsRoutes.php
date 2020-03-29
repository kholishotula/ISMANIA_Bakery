<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class OutletsRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'outlets',

		]);

		$this->addGet(
			'/Outlets',
			[
				'action' => 'outlets',
			]
        );
	}
}

?>