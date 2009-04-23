--TEST--
Set methods
--SKIPIF--
<?php if (!extension_loaded("lwes")) print "skip"; ?>
--FILE--
<?php 

// Create and destroy
$event = lwes_event_create(NULL, 'ABC');
var_dump($event);


lwes_event_set_U_INT_16($event, "a",   65535); 
lwes_event_set_INT_16($event,   "b",  -30000); 
lwes_event_set_U_INT_32($event, "c",   65536); 
lwes_event_set_INT_32($event,   "d",  -65536); 
lwes_event_set_STRING($event,   "e",   "foo"); 
lwes_event_set_BOOLEAN($event,  "f",   true); 

// n.a. (yet?)
// lwes_event_set_U_INT_64($event, "g",   65536); 
// lwes_event_set_INT_64($event,   "h",   -65536); 

lwes_event_set_IP_ADDR_w_string($event, "i",   "127.0.0.1");

?>
--EXPECT--
resource(4) of type (_p_lwes_event)
