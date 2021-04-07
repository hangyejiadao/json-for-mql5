//+------------------------------------------------------------------+
//|                                                    JSONStack.mqh |
//|                                  Copyright 2021, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#include "JSONObject.mqh"
class JSONStack
  {
private:
   JSONObject*        stack[];
   
public:
                     JSONStack();
                    ~JSONStack();
   void              push(JSONObject *item);
   int               stackpoint;
   JSONObject*       pop();
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
JSONStack::JSONStack()
  {
   ArrayResize(stack,5);
   stackpoint = -1;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
JSONStack::~JSONStack()
  {
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void JSONStack::push(JSONObject *item)
  {
   if(stackpoint +1 == ArraySize(stack))
     {
      ArrayResize(stack,ArraySize(stack) + 5);
     }
     stack[++stackpoint] = item;
  }
//+------------------------------------------------------------------+


JSONObject* JSONStack::pop(void){
   JSONObject *item = stack[stackpoint];
   ArrayRemove(stack,stackpoint--);
   return item;
}