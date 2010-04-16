%module lwes

%pragma(php4) phpinfo="
  php_info_print_table_start();
  php_info_print_table_header(2, \"LWES support\", \"enabled\");
  php_info_print_table_end();
"

%{
#include "lwes.h"
%}

%typemap(in) char * {

if ((*$input)->type == IS_NULL) {
  $1 = NULL;
} else {
  convert_to_string_ex($input);
  $1 = Z_STRVAL_PP($input);
}

}

%typemap(in) struct lwes_event_type_db * {

if ((*$input)->type == IS_NULL) {
  $1 = NULL;
} else {
  if(SWIG_ConvertPtr(*$input, (void **)&$1, $1_descriptor, 0) < 0) {
    $1 = NULL;
  }
}

}

struct lwes_event_type_db *
lwes_event_type_db_create(char *filename);

int
lwes_event_type_db_destroy(struct lwes_event_type_db *db);

struct lwes_emitter *
lwes_emitter_create(char *address, char *iface, int port,
                    int emit_heartbeat, short freq);

struct lwes_emitter *
lwes_emitter_create_with_ttl(char *address, char *iface, int port,
                             int emit_heartbeat, short freq, int ttl);

int
lwes_emitter_emit(struct lwes_emitter *emitter, struct lwes_event *event);

int
lwes_emitter_emitto(char *address, char *iface, int port,
                    struct lwes_emitter *emitter, struct lwes_event *event);

int
lwes_emitter_destroy(struct lwes_emitter *emitter);

struct lwes_event *
lwes_event_create(struct lwes_event_type_db *db, char *event_name);

struct lwes_event *
lwes_event_create_with_encoding(struct lwes_event_type_db *db,
                                char *event_name, short encoding);

int
lwes_event_set_U_INT_16(struct lwes_event *event, char *attribute_name,
                        unsigned short a_uint16);

int
lwes_event_get_U_INT_16(struct lwes_event *event, char *attribute_name,
                        unsigned short *a_uint16);

int
lwes_event_set_INT_16(struct lwes_event *event, char *attribute_name,
                      short a_int16);

int
lwes_event_get_INT_16(struct lwes_event *event, char *attribute_name,
                      short *a_int16);

int
lwes_event_set_U_INT_32(struct lwes_event *event, char *attribute_name,
                        unsigned int a_uint32);

int
lwes_event_get_U_INT_32(struct lwes_event *event, char *attribute_name,
                        unsigned int *a_uint32);

int
lwes_event_set_INT_32(struct lwes_event *event, char *attribute_name,
                      int a_int32);

int
lwes_event_get_INT_32(struct lwes_event *event, char *attribute_name,
                      int *a_int32);

int
lwes_event_set_U_INT_64(struct lwes_event *event, char *attribute_name,
                        unsigned long a_uint64);

int
lwes_event_get_U_INT_64(struct lwes_event *event, char *attribute_name,
                        unsigned long &a_uint64);

int 
lwes_event_set_INT_64(struct lwes_event *event, char *attribute_name,
                      long a_uint64);

int
lwes_event_get_INT_64(struct lwes_event *event, char *attribute_name,
                      long &a_uint64);

int
lwes_event_set_STRING(struct lwes_event *event, char *attribute_name,
                      char *a_string);

int
lwes_event_get_STRING(struct lwes_event *event, char *attribute_name,
                      char **a_string);

int
lwes_event_set_IP_ADDR_w_string(struct lwes_event *event, char *attribute_name,
                                char *an_ip_addr);

int
lwes_event_get_IP_ADDR(struct lwes_event *event, char *attribute_name,
                       struct in_addr *an_in_addr);

int
lwes_event_set_BOOLEAN(struct lwes_event *event, char *attribute_name,
                       int a_boolean);

int
lwes_event_get_BOOLEAN(struct lwes_event *event, char *attribute_name,
                       int *a_boolean);

int
lwes_event_destroy(struct lwes_event *event);

%inline %{

struct lwes_event *
lwes_event_create_no_db(char *event_name)
{
  return lwes_event_create(NULL, event_name);
}

%}


