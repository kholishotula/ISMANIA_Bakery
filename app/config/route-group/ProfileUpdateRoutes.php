<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class ProfileUpdateRoutes extends RouterGroup
{
	
	public function initialize()
	{
		$this->setPaths([
			'controller' => 'profileupdate',

		]);

		$this->addGet(
			'/edit_profile',
			[
				'action' => 'edit_profile',
			]
        );

        $this->addPost(
			'/edit_profile',
			[
				'action' => 'edit',
			]
        );
	}
}

?>