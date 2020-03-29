<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class NewsRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'news',

		]);

		$this->addGet(
			'/News',
			[
				'action' => 'news',
			]
        );
	}
}

?>