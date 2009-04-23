--TEST--
Event
--SKIPIF--
<?php if (!extension_loaded("lwes")) print "skip"; ?>
--FILE--
<?php 

// Create and destroy
$event = lwes_event_create(NULL, 'ABC');
var_dump($event);
lwes_event_destroy($event);

// Create and leave for garbage collection
$event = lwes_event_create(NULL, 'ABC');
var_dump($event);

?>
--EXPECT--
resource(4) of type (_p_lwes_event)
resource(5) of type (_p_lwes_event)
