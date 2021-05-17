//+------------------------------------------------------------------+
//|                                                    JSONStack.mqh |
//|                                  Copyright 2021, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#include "JSON.mqh"
class JSONStack
  {
private:
   JSON*             stackArray[];

public:
                     JSONStack();
                    ~JSONStack();
   void              push(JSON *item);
   int               stackpoint;
   JSON*             pop();
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
JSONStack::JSONStack()
  {
   ArrayResize(stackArray,5);
   stackpoint = -1;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
JSONStack::~JSONStack()
  {
   ArrayFree(stackArray);
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void JSONStack::push(JSON *item)
  {
   if(stackpoint +1 == ArraySize(stackArray))
     {
      ArrayResize(stackArray,ArraySize(stackArray) + 5);
     }
   stackArray[++stackpoint] = item;
  }
//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
JSON* JSONStack::pop(void)
  {
   JSON *item = stackArray[stackpoint];
   ArrayRemove(stackArray,stackpoint--);
   return item;
  }
//+------------------------------------------------------------------+
