<?php

// absoluter Pfad zu wp-load.php oder relativ zu diesem Skript
//zB., ../wp-core/wp-load.php
include( 'trunk/wp-load.php' ); 

// Das WPDB-Datenbankobjekt mithilfe der WP-Datenbank abrufen 
// Weitere Informationen: http://codex.wordpress.org/Class_Reference/wpdb 
global $wpdb;

// ein neues DB Objekt mit einer anderen Datenbank erstellen 
//$mydb = new wpdb('username','password','database','localhost');

// grundlegende Funktionalität 

// eine beliebige Abfrage ausführen
$wpdb->query( "SELECT * FROM wp_posts" );

// Eine Abfrage ausführen und die Ergebnisse als assoziatives Array abrufen
$wpdb->get_results( "SELECT * FROM wp_posts" );

// eine einzelne Variable erhalten 
$wpdb->get_var( "SELECT post_title FROM wp_posts WHERE ID = 1" );

// eine Reihe als Assoc bekommen  Array 
$wpdb->get_row( "SELECT * FROM wp_posts WHERE ID = 1" );

// eine ganze Spalte erhalten 
$wpdb->get_col( "SELECT post_title FROM wp_posts" );

// Daten in eine Tabelle einfügen ... SQL-Schutz? 
$wpdb->insert( 'wp_posts', array( 'post_title' => 'test', 'ID' => 5 ), array( '%s', '%d') );

// eine vorhandene Zeile aktualisieren
$wpdb->update( 'wp_posts', array( 'post_title' => 'test2'), array( 'ID' => 5 ), array( '%s' ) );

// Escape Anfragen 
$wpdb->query( $wpdb->prepare( "UPDATE INTO wp_posts set post_title = %s WHERE ID = %d", 'test2', 5 ) );

// zwei Schritte zum Einfügen eines Beitrags… 

// das Feld post… all definieren optional 
$post = array( 
		'post_title' => 'test',
		'post_type' => 'station',
		'post_status' => 'publish',
		'post_author' => 'greg',
);

// einfügen 
$id = wp_insert_post( $post );

//store key/value pair
update_post_meta( $id, 'expiration', '201101010' );

//retrieve key/value pair
$meta = get_post_meta( $id, 'expiration', true );

//search for posts by key/value pair
$posts = get_posts( 'expiration=20110110' );

//associate taxonomy terms with a post
wp_set_post_terms( $id, array( 'red', 'blue', 'green'), 'colors' );

//query posts by taxonomy term
$posts = get_posts( 'color=red' );

// Assistenten zum Erstellen von Taxonomie- / Post-Typen 
// gibt ein Plugin aus, das Sie einfach in / wp-content / plugins ablegen und aktivieren 
// http://themergency.com/generators/wordpress-custom-taxonomy/ 
// http://themergency.com/generators/wordpress-custom-post-types/ 

//Cache

// einen Wert im Cache speichern 
wp_cache_set( 'unique_key', $data );

// Wert aus dem Cache abrufen 
$data = wp_cache_get( 'unqiue_key' );

/* 
zusätzliche Dinge die zu tun sind 
1) Installieren Sie W3 Total Cache, um die Zwischenspeicherung von DB und Objekten zu erhalten 
2) Verwenden Sie die Front-End- / Admin-Benutzeroberfläche zum Durchsuchen / Sortieren von Daten 
*/ 