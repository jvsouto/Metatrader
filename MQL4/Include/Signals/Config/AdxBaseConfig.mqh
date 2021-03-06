//+------------------------------------------------------------------+
//|                                                AdxBaseConfig.mqh |
//|                                 Copyright © 2017, Matthew Kastor |
//|                                 https://github.com/matthewkastor |
//+------------------------------------------------------------------+
#property copyright "Matthew Kastor"
#property link      "https://github.com/matthewkastor"
#property strict

#include <Signals\Config\AbstractSignalConfig.mqh>
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
struct AdxBaseConfig : public AbstractSignalConfig
  {
public:
   ENUM_APPLIED_PRICE AppliedPrice;
   double Threshold;

   void RsiConfig()
     {
      this.Period=14;
      this.Timeframe=PERIOD_CURRENT;
      this.Shift=0;
      this.AppliedPrice=PRICE_CLOSE;
      this.Threshold=25;
     };
  };
//+------------------------------------------------------------------+
