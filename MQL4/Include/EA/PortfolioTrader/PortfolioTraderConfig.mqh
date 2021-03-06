//+------------------------------------------------------------------+
//|                                        PortfolioTraderConfig.mqh |
//|                                 Copyright © 2017, Matthew Kastor |
//|                                 https://github.com/matthewkastor |
//+------------------------------------------------------------------+
#property copyright "Matthew Kastor"
#property link      "https://github.com/matthewkastor"
#property strict

#include <EA\PortfolioManagerBasedBot\BasePortfolioManagerBotConfig.mqh>
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
struct PortfolioTraderConfig : public BasePortfolioManagerBotConfig
  {
public:
   int               extremeBreakPeriod;
   int               extremeBreakShift;
   color             extremeBreakColor;
   double            atrMinimumTpSlDistance;
   ENUM_TIMEFRAMES   extremeBreakTimeframe;
   int               atrPeriod;
   double            atrMultiplier;
   color             atrColor;
   double            atrSkew;
   int               parallelSignals;
  };
//+------------------------------------------------------------------+
