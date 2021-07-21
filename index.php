<?php
$title = 'Дела в порядке';
include('templates/layout.php');
include('templates/main.php');
include('helpers.php');
$content = include_template('main.php', ['projects' => $doings, 'tasks' => $tasks, 'show_complete_tasks' => $show_complete_tasks]);
$layout_content = include_template('layout.php', ['content' => $content, 'title' => 'Главная']);
print($layout_content);




// показывать или нет выполненные задачи


   function сategoryCount(array $task_list, $name_project) {
    $count = 0;
    foreach ($task_list as $task) {
        if (isset($task['сategory']) && $task['сategory'] === $name_project) {
            $count++;
        }
    }
    return $count;
}


?>


