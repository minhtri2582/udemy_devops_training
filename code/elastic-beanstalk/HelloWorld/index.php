<?php

echo "service 01 - " . gethostname() . "<br>";
if (isset($_GET['loadtest'])) {             
    // Starting clock time in seconds
    $start_time = microtime(true);
    echo "Load test <br>";     
    for($i = 0; $i < 1000000000; $i++) {
        $a += $i;
    }  
    // End clock time in seconds
    $end_time = microtime(true);
    
    // Calculate script execution time
    $execution_time = ($end_time - $start_time);
    
    echo " Execution time of script = ".$execution_time." sec";    
}  