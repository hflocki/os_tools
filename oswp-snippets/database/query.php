<?php
// Run sql queries manually

global $wpdb;

// wpdb::prepare() requires 2 parameters. More info: http://make.wordpress.org/core/2012/12/12/php-warning-missing-argument-2-for-wpdb-prepare/
$sql = $wpdb->prepare("SELECT * FROM " . $wpdb->posts . "WHERE post_title = %s", $_GET['title']);
$results = $wpdb->query($sql);
?>