--TEST--
Event Type DB
--SKIPIF--
<?php if (!extension_loaded("lwes")) print "skip"; ?>
--FILE--
<?php 

$db = lwes_event_type_db_create(dirname(__FILE__).'/testeventtypedb.esf');
var_dump($db);

$db = lwes_event_type_db_create(dirname(__FILE__).'/testeventtypedb2.esf');
var_dump($db);

?>
--EXPECT--
resource(4) of type (_p_lwes_event_type_db)
resource(5) of type (_p_lwes_event_type_db)
