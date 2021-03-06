//+------------------------------------------------------------------+
//|                                              EuclideanVector.mqh |
//|                                 Copyright © 2017, Matthew Kastor |
//|                                 https://github.com/matthewkastor |
//+------------------------------------------------------------------+
#property copyright "Matthew Kastor"
#property link      "https://github.com/matthewkastor"
#property strict

#include <SpatialReasoning\LineSegment.mqh>
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
struct EuclideanVector : public LineSegment
  {
public:
   CoordinatePoint   InitialPoint()
     {
      return this.A;
     }

   void InitialPoint(CoordinatePoint &p)
     {
      this.A.Set(p);
     }

   CoordinatePoint   TerminalPoint()
     {
      return this.B;
     }

   void TerminalPoint(CoordinatePoint &p)
     {
      this.B.Set(p);
     }

   void EuclideanVector():LineSegment()
     {
     }

   void EuclideanVector(CoordinatePoint &initialPoint,CoordinatePoint &terminalPoint):LineSegment(initialPoint,terminalPoint)
     {
     }

   double GetMagnitude()
     {
      return this.GetLength();
     }

   double GetDirectionInRadians()
     {
      RightTriangle t(this.InitialPoint(),this.TerminalPoint());
      return t.GetRadians();
     }

   double GetDirectionInDegrees()
     {
      RightTriangle t(this.InitialPoint(),this.TerminalPoint());
      return t.GetDegrees();
     }
  };
//+------------------------------------------------------------------+
