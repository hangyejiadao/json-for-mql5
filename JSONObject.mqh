//+------------------------------------------------------------------+
//|                                                   JSONObject.mqh |
//|                                  Copyright 2021, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, MetaQuotes Ltd."

#property link      "https://www.mql5.com"
#property version   "1.00"
#define JSON_STRING 10
#define JSON_DOUBLE 20
#define JSON_LONG 30
#define JSON_BOOL 40
#define JSON_OBJECT 50
#define JSON_ARRAYS 60
#define JSON_UNKNOW 70
#define JSON_ARRAY_NAME "default_array"
class JSONObject
  {
private:


public:
   JSONObject        *next;
   JSONObject        *prev;
   JSONObject        *child;
   int               type;
   string            name;
   string            valuestring;
   double            valuedouble;
   long              valuelong;
   bool              valuebool;
                     JSONObject();
                    ~JSONObject();
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
JSONObject::JSONObject()
  {
   name = JSON_ARRAY_NAME;
   type = JSON_UNKNOW;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
JSONObject::~JSONObject()
  {
  }
//+------------------------------------------------------------------+
