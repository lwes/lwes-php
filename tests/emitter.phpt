--TEST--
Emitter
--SKIPIF--
<?php if (!extension_loaded("lwes")) print "skip"; ?>
--FILE--
<?php 

// Create and destroy
$emitter = lwes_emitter_create("127.0.0.1", NULL, 9999, 0, 60);
var_dump($emitter);
lwes_emitter_destroy($emitter);

// Create and leave for garbage collection
$emitter = lwes_emitter_create("127.0.0.1", NULL, 9999, 0, 60);
var_dump($emitter);

?>
--EXPECT--
resource(4) of type (_p_lwes_emitter)
resource(5) of type (_p_lwes_emitter)
