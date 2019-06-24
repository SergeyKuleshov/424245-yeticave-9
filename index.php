<?php
require_once('helpers.php');


$is_auth = rand(0, 1);

$user_name = 'Сергей Кулешов'; // укажите здесь ваше имя
?>

<?php

    function price_formatting($number)
    {
        return $number = number_format(ceil($number), 0, "", " ") . " &#8381;";
    }

    //массив категорий
    $categories = ['Доски и лыжи', 'Крепления', 'Ботинки', 'Одежда', 'Инструменты', 'Разное'];

    //массив имитирующий данные товара от пользователя
    $advertisements = [
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



    //время
    function time_to_end($amountOfTimeToFinish) {

        date_default_timezone_set("Europe/Moscow");

        $timestamp_to_end = strtotime($amountOfTimeToFinish);
        $current_timestamp = time();

        $secs_to_end = $timestamp_to_end - $current_timestamp;
        $hour_to_end = floor($secs_to_end / 3600);
        $minutes_to_end = floor($secs_to_end % 3600 / 60);

        $time_to_end = $hour_to_end . ':' . $minutes_to_end;

        return $time_to_end;

    }

    $time_to_midnight = time_to_end("tomorrow midnight");



    function is_less_than_one_hour($time) {

        $first_number = substr($time, 0, 1);
        $first_int_number = intval($first_number);
        $one_hour = 1;
        if ($first_int_number < $one_hour) {
            return true;
        }
    }

    $hour = is_less_than_one_hour($time_to_midnight);



    //шаблонизатор
    $page_content = include_template('index.php', [
        'advertisements' => $advertisements,
        'time_to_midnight' => $time_to_midnight,
        'hour' => $hour,
        'categories' => $categories

    ]);

    $layout_content = include_template('layout.php', [
        'content' => $page_content,
        'categories' => $categories,
        'title' => 'Yeticave - главная страница',
        'is_auth' => $is_auth,
        'user_name' => $user_name
    ]);

    print($layout_content);
    //изменение
    //еще одно
