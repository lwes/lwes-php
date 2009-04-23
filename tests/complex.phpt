--TEST--
Complex usage
--SKIPIF--
<?php if (!extension_loaded("lwes")) print "skip"; ?>
--FILE--
<?php 

$emitter = lwes_emitter_create("127.0.0.1", NULL, 12345, 1, 60); 
var_dump($emitter);
$db = lwes_event_type_db_create(dirname(__FILE__).'/testcomplex.esf'); 
var_dump($db);
$event  = lwes_event_create_with_encoding($db, "UserLogin", 1); 
var_dump($event);

lwes_event_set_STRING($event, "username",  "bob"); 
lwes_event_set_U_INT_32($event, "password",  0xdeadbeef); 
lwes_event_set_IP_ADDR_w_string($event, "clientIP",  "127.0.0.1"); 
lwes_event_set_BOOLEAN($event, "successful", 0); 
lwes_emitter_emit($emitter, $event); 

lwes_event_destroy($event); 
lwes_event_type_db_destroy($db); 
lwes_emitter_destroy($emitter); 

?>
--EXPECT--
resource(4) of type (_p_lwes_emitter)
resource(5) of type (_p_lwes_event_type_db)
resource(6) of type (_p_lwes_event)
