<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class ProfileRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'profile',

		]);

		$this->addGet(
			'/Profile',
			[
				'action' => 'profile',
			]
        );

        $this->addGet(
            '/logout',
			[
				'action' => 'logout',
			]
        );

        $this->addGet(
            '/delete',
			[
				'action' => 'delete',
			]
        );
	}
}

?>