<?php
require_once('helpers.php');


// показывать или нет выполненные задачи
$show_complete_tasks = rand(0, 1);
$tasks = ['Входящие', 'Учеба', 'Работа', 'Домашние дела', 'Авто'];
$doings = [
    [
       'task' => 'Собеседование в IT компании',
       'date' => '01.12.2019',
       'сategory' => 'Работа',
       'status' => false
      ],
   [
        'task' => 'Выполнить тестовое задание',
       'date' => '25.12.2019',
       'сategory' => 'Работа',
       'status' => false
      ],
   [
       'task' => 'Сделать задание первого раздела',
       'date' => '21.12.2019',
       'сategory' => 'Учеба',
       'status' => true
      ],
   [
      'task' => 'Встреча с другом',
       'date' => '22.12.2019',
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

   function сategoryCount(array $task_list, $name_project) {
    $count = 0;
    foreach ($task_list as $task) {
        if (isset($task['сategory']) && $task['сategory'] === $name_project) {
            $count++;
        }
    }
    return $count;
}


$main = include_template('main.php', ['tasks' => $tasks, 'doings' => $doings, 'show_complete_tasks' => $show_complete_tasks]);
print include_template('layout.php', ['main' => $main]);

?>



