<?php

function get_date_difference($date_task)
{
    if ($date_task === null) {
        return [PHP_INT_MAX, PHP_INT_MAX, PHP_INT_MAX];
    }
    $current_date = time();
    $quantity_seconds_in_hour = 3600;
    $quantity_seconds_in_minute = 60;

    $remain = strtotime($date_task) - $current_date; //секунд
    $hours = floor($remain / $quantity_seconds_in_hour);
    $minutes = floor(($remain - $hours * $quantity_seconds_in_hour) / $quantity_seconds_in_minute);
    $seconds = $remain - $quantity_seconds_in_hour * $hours - $quantity_seconds_in_minute * $minutes;

    return [$hours, $minutes, $seconds];
}

function сategoryCount(array $task_list, $name_project)
{
    $count = 0;
    foreach ($task_list as $task) {
        if (isset($task['сategory']) && $task['сategory'] === $name_project) {
            $count++;
        }
    }
    return $count;
}

function prepare_for_template($doings, $quantity_hours_in_day)
{
    $result = [];
    foreach ($doings as $doing) {
        $item = $doing;
        [$remainHours, $remainMinutes, $remainSeconds] = get_date_difference($doing['date']);
        $item['is_important'] = ($remainHours < $quantity_hours_in_day);

        $result[] = $item;
    }

    return $result;
}
