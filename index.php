<?php
require_once 'helpers.php';
require_once 'functions.php';
$quantity_hours_in_day = 24;

// показывать или нет выполненные задачи
$show_complete_tasks = rand(0, 1);
$tasks = ['Входящие', 'Учеба', 'Работа', 'Домашние дела', 'Авто'];
$doings = [
    [
        'task' => 'Собеседование в IT компании',
        'date' => '03.08.2021',
        'сategory' => 'Работа',
        'status' => false
    ],
    [
        'task' => 'Выполнить тестовое задание',
        'date' => '04.08.2021',
        'сategory' => 'Работа',
        'status' => false
    ],
    [
        'task' => 'Сделать задание первого раздела',
        'date' => '05.08.2021',
        'сategory' => 'Учеба',
        'status' => true
    ],
    [
        'task' => 'Встреча с другом',
        'date' => '04.08.2021',
        'сategory' => 'Входящие',
        'status' => false
    ],
    [
        'task' => 'Купить корм для кота',
        'date' => null,
        'сategory' => 'Домашние дела',
        'status' => false
    ],
    [
        'task' => 'Заказать пиццу',
        'date' => null,
        'сategory' => 'Домашние дела',
        'status' => false
    ]
];

$doings = prepare_for_template($doings, $quantity_hours_in_day);


$main = include_template('main.php',
                         [
                             'tasks' => $tasks,
                             'doings' => $doings,
                             'show_complete_tasks' => $show_complete_tasks
                         ]
);

print include_template('layout.php', ['main' => $main]);

?>



