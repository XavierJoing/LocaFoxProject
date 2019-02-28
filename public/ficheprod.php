<?php

use Doctrine\DBAL\Configuration;
use Doctrine\DBAL\DriverManager;

require __DIR__.'/../vendor/autoload.php';

$config = new Configuration();

$connectionParams = [
    'driver'    => 'pdo_mysql',
    'host'      => '127.0.0.1',
    'port'      => '3306',
    'dbname'    => 'BdLocafox',
    'user'      => 'root',
    'password'  => '',
    'charset'   => 'utf8mb4',
];

$conn = DriverManager::getConnection($connectionParams, $config);

$loader = new Twig_Loader_Filesystem(__DIR__.'/../templates');

// instanciation du moteur de template
$twig = new Twig_Environment($loader, [
    // activation du mode debug
    'debug' => true,
    // activation du mode de variables strictes
    'strict_variables' => true,
]);

$twig->addExtension(new Twig_Extension_Debug());

$productsSql = 'SELECT NumProd, NomProd, PrixHT FROM Produit';
$quantitySql = 'SELECT * FROM stocker';

$products = $conn->fetchAll($productsSql);
$quantity = $conn->fetchAll($quantitySql);

$brand = 'LocaFox';

echo $twig->render('ficheprod.html.twig', [
    'products' => $products,
    'quantity' => $quantity,
    'brand' => $brand,
    'get' => $_GET,
]);