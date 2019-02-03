<?php
// Delete a record from a table

global $wpdb;
$where = array(
	'id' => 5
);
$where_format = array(
	'%d'	// id
);
$wpdb->delete('wp_posts', $where, $where_format)
?>