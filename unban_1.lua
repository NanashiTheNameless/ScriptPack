<?php

    //Connect to the database
    $host = "127.0.0.1";
    $user = "grubsteak";                     //Your Cloud 9 username
    $pass = "";                                 //Remember, there is NO password by default!
    $db = "bans";                          //Your database name you want to connect to
    $port = 3306;                               //The port #. It is always 3306

    $connection = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());


    if($_GET["id"])
    {
    $query = "DELETE FROM banned WHERE id=" . $_GET["id"];
    mysqli_query($connection, $query);
    }
    else
    {
    echo "error";
    }

?>