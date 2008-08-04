%module lwes 

%{
#include "lwes.h"
%}

%include lwes.h

%inline %{

struct lwes_event_type_db *
create_db(char *filename)
{
  return lwes_event_type_db_create(filename);
}

int
destroy_db(struct lwes_event_type_db* db)
{
  return lwes_event_type_db_destroy(db);
}

struct lwes_emitter *
create_emitter(char *address, char *iface, int port,
               int emit_heartbeat, short freq)
{
  return lwes_emitter_create(address, iface, port, emit_heartbeat, freq);
}

struct lwes_emitter *
create_emitter_with_ttl(char *address, char *iface, int port,
                        int emit_heartbeat, short freq, int ttl)
{
  return lwes_emitter_create_with_ttl(address, iface, port, emit_heartbeat,
                                      freq, ttl);
}

int
emit(struct lwes_emitter *emitter, struct lwes_event *event)
{
  return lwes_emitter_emit(emitter, event);
}

int
emitto(char *address, char *iface, int port, struct lwes_emitter *emitter,
       struct lwes_event *event)
{
  return lwes_emitter_emitto(address, iface, port, emitter, event);
}

int
destroy_emitter(struct lwes_emitter *emitter)
{
  return lwes_emitter_destroy(emitter);
}

struct lwes_event *
create_event(struct lwes_event_type_db* db, char *event_name)
{
  return lwes_event_create(db, event_name);
}

struct lwes_event *
create_event_with_encoding(struct lwes_event_type_db *db, char *event_name,
                           short encoding)
{
  return lwes_event_create_with_encoding(db, event_name, encoding);
}

int
set_uint16(struct lwes_event *event, char *attribute_name,
           unsigned short a_uint16)
{
  return lwes_event_set_U_INT_16(event, attribute_name, a_uint16);
}

int
get_uint16(struct lwes_event* event, char* attribute_name,
           unsigned short *a_uint16)
{
  return lwes_event_get_U_INT_16(event, attribute_name, a_uint16);
}

int
set_int16(struct lwes_event* event, char* attribute_name,
          short an_int16)
{
  return lwes_event_set_INT_16(event, attribute_name, an_int16);
}

int
get_int16(struct lwes_event* event, char* attribute_name,
          short* an_int16)
{
  return lwes_event_get_INT_16(event, attribute_name, an_int16);
}

int
set_uint32(struct lwes_event* event, char* attribute_name,
           unsigned int a_uint32)
{
  return lwes_event_set_U_INT_32(event, attribute_name, a_uint32);
}

int
get_uint32(struct lwes_event* event, char* attribute_name,
           unsigned int * a_uint32)
{
  return lwes_event_get_U_INT_32(event, attribute_name, a_uint32);
}

int
set_int32(struct lwes_event* event, char* attribute_name,
          int an_int32)
{
  return lwes_event_set_INT_32(event, attribute_name, an_int32);
}

int
get_int32(struct lwes_event* event, char* attribute_name,
          int* an_int32)
{
  return lwes_event_get_INT_32(event, attribute_name, an_int32);
}

int
set_uint64(struct lwes_event* event, char* attribute_name,
           char* a_uint64)
{
  return lwes_event_set_U_INT_64_w_string(event, attribute_name, a_uint64);
}

int
get_uint64(struct lwes_event* event, char* attribute_name,
           unsigned long long * a_uint64)
{
  return lwes_event_get_U_INT_64(event, attribute_name, a_uint64);
}

int
set_int64(struct lwes_event* event, char* attribute_name,
          char* an_int64)
{
  return lwes_event_set_INT_64_w_string(event, attribute_name, an_int64);
}

int
get_int64(struct lwes_event* event, char* attribute_name,
          long long* an_int64)
{
  return lwes_event_get_INT_64(event, attribute_name, an_int64);
}

int
set_string(struct lwes_event* event, char* attribute_name,
           char* a_string)
{
  return lwes_event_set_STRING(event, attribute_name, a_string);
}

int
get_string(struct lwes_event* event, char* attribute_name,
           char** a_string)
{
  return lwes_event_get_STRING(event, attribute_name, a_string);
}

int
set_ip_addr(struct lwes_event* event, char* attribute_name,
            char* an_ip_addr)
{
  return lwes_event_set_IP_ADDR_w_string(event, attribute_name, an_ip_addr);
}

int
get_ip_addr(struct lwes_event *event, char *attribute_name,
            struct in_addr *an_ip_addr)
{
  return lwes_event_get_IP_ADDR(event, attribute_name, an_ip_addr);
}

int
set_boolean(struct lwes_event* event, char* attribute_name,
            int a_boolean)
{
  return lwes_event_set_BOOLEAN(event, attribute_name, a_boolean);
}

int
get_boolean(struct lwes_event *event, char *attribute_name,
            int *a_boolean)
{
  return lwes_event_get_BOOLEAN(event, attribute_name, a_boolean);
}

int
destroy_event(struct lwes_event *event)
{
  return lwes_event_destroy(event);
}

void
current_time_millis(char *buffer)
{
  LWES_INT_64 current_time = 0LL;
  current_time = currentTimeMillisLongLong();
  snprintf(buffer,17,"%016llX",current_time);
}

%}


