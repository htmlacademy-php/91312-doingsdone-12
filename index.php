<?php

$page_content = include_template('/temlates/main.php', ['projects' => $projects, 'tasks' => $tasks, 'show_complete_tasks' => $show_complete_tasks]);
$layout_content = include_template('/temlates/layout.php', ['content' => $page_content, 'title' => 'Дела в порядке']);
print($layout_content);

require_once('/temlates/layout.php');
require_once('/temlates/main.php');
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







?>
