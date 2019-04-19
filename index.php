<?php
$is_auth = rand(0, 1);

$user_name = 'Сергей Кулешов'; // укажите здесь ваше имя
?>

<?php

    function price_formatting($number)
    {
        return $number = number_format(ceil($number), 0, "", " ") . " &#8381;";
    }

    $categories = ['Доски и лыжи', 'Крепления', 'Ботинки', 'Одежда', 'Инструменты', 'Разное'];
    $ads = [
        [
            'title' => '2014 Rossignol District Snowboard',
            'category' => 'Доски и лыжи',
            'price' => '10999',
            'url-pictures' => 'img/lot-1.jpg'
        ],
        [
            'title' => 'DC Ply Mens 2016/2017 Snowboard',
            'category' => 'Доски и лыжи',
            'price' => '159999',
            'url-pictures' => 'img/lot-2.jpg'
        ],
        [
            'title' => 'Крепления Union Contact Pro 2015 года размер L/XL',
            'category' => 'Крепления',
            'price' => '8000',
            'url-pictures' => 'img/lot-3.jpg'
        ],
        [
            'title' => 'Ботинки для сноуборда DC Mutiny Charocal',
            'category' => 'Ботинки',
            'price' => '10999',
            'url-pictures' => 'img/lot-4.jpg'
        ],
        [
            'title' => 'Куртка для сноуборда DC Mutiny Charocal',
            'category' => 'Одежда',
            'price' => '7500',
            'url-pictures' => 'img/lot-5.jpg'
        ],
        [
            'title' => 'Маска Oakley Canopy',
            'category' => 'Разное',
            'price' => '5400',
            'url-pictures' => 'img/lot-6.jpg'
        ]
    ];


    $page_content = include_template('templates/index.php', ['ads' => $ads]);
    $layout_content = include_template('templates/layout.php', [
        'content' => $page_content,
        'categories' => $categories,
        'title' => 'Yeticave - главная страница'
    ]);

    print($layout_content);
