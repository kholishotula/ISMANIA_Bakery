<?php

$di->set(
	'router',
	function() {
		$router = new \Phalcon\Mvc\Router(false);

		$router->mount(
			new UserRoutes()
		);

		$router->mount(
			new SessionRoutes()
		);

		$router->mount(
			new HomeRoutes()
		);

		$router->mount(
			new ProductRoutes()
		);

		$router->mount(
			new PromoRoutes()
		);

		$router->mount(
			new NewsRoutes()
		);

		$router->mount(
			new OutletsRoutes()
		);

		$router->mount(
			new ProfileRoutes()
		);

		$router->mount(
			new CartRoutes()
		);

		$router->mount(
			new ProfileUpdateRoutes()
		);

		$router->mount(
			new AdminRoutes()
		);

		$router->addGet(
			'/',
			[
				'action' => 'index',
			]
        );

		$router->notFound([
			'controller' => 'index',
			'action' => 'show404',
		]);

		return $router;
	}
);

?>