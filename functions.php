<?php

function get_date_difference($date)
{
    $current_date = time();
    $quantity_seconds_in_hour = 3600;


    if ($doing['date'] != null) {
        $date_task = strtotime($doing['date']);
        return floor(($date_task - $current_date) / $quantity_seconds_in_hour);
    }
}

;


