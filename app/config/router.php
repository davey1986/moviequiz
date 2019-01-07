<?php

$router = $di->getRouter();

//Define your routes here

$router->add(
    '/quiz',
    [
        'controller' => 'Index',
        'action'     => 'Index',
    ]
);

$router->add(
    '/show',
    [
        'controller' => 'quiz',
        'action'     => 'Index',
    ]
);

$router->add(
    '/search',
    [
        'controller' => 'quiz',
        'action'     => 'Search',
    ]
);

$router->add(
    '/create',
    [
        'controller' => 'quiz',
        'action'     => 'Create',
    ]
);


$router->add(
    '/view',
    [
        'controller' => 'quiz',
        'action'     => 'View',
    ]
);

$router->add(
    '/check',
    [
        'controller' => 'quiz',
        'action'     => 'Check',
        'id'		 => 1
    ]
);

$router->handle();
