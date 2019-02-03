<?php
// Reading data from the database

global $wpdb;

// wpdb::get_results()
$sql = "SELECT * FROM " . $wpdb->posts;
$results = $wpdb->get_results($sql);

// wpdb::get_row()
$sql2 = "SELECT * FROM " . $wpdb->posts ." WHERE post_title = 'This is a test'";
$results2 = $wpdb->get_row($sql2);

// wpdb::get_col()
$sql3 = "SELECT post_status FROM " . $wpdb->posts;
$results3 = $wpdb->get_col($sql3);

// wpdb::get_var()
$sql4 = "SELECT post_status FROM " . $wpdb->posts . " WHERE post_title = 'This is a test'";
$results4 = $wpdb->get_var($sql4);
?>