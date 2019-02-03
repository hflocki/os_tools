<?php
// Create a new record in a table

global $wpdb;

// data to be added
$data = array(
	'post_title' => __('This is a test'),
	'post_content' => __('This is really long text'),
	'post_status' => __('draft')
);

// Data format
$data_format = array(
	'%s',	// post_title
	'%s',	// post_content
	'%s'	// post_status
);
$wpdb->insert('wp_posts', $data, $data_format);
?>