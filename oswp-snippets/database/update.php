<?php
// Update a row in a table

global $wpdb;

// What values are we changing
$data = array(
	'post_title' => __('This is another test'),
	'post_content' => __('This is more text than previously entered'),
	'post_status' => __('publish')
);

// What format is the data
$data_format = array(
	'%s',	// post_title
	'%s',	// post_content
	'%s'	// post_status
);

// What are we searching by
$where = array(
	'post_title' => __('This is a test')
);

// What format is the search data in
$where_format = array(
	'%s'	
);

// Run the query
$wpdb->update('wp_posts', $data, $where, $data_format, $where_format);
?>