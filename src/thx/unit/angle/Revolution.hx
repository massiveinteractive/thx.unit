package thx.unit.angle;

import thx.core.Floats;

// TODO parse string

abstract Revolution(Float) {
  @:from inline static public function floatToRevolution(value : Float) : Revolution
    return new Revolution(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  @:op( -A ) inline public function negate() : Revolution
    return -this;
  @:op( A+B) inline public function add(other : Revolution) : Revolution
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Revolution) : Revolution
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Revolution
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Revolution
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Revolution
    return this % other;
  @:op(A==B) inline public function equal(other : Revolution) : Bool
    return this == other;
  public function nearEqual(other : Revolution) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Revolution) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Revolution) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Revolution) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Revolution) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Revolution) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 256;
  @:to inline public function toDegree() : Degree
    return this * 360;
  @:to inline public function toGrad() : Grad
    return this * 400;
  @:to inline public function toHourAngle() : HourAngle
    return this * 24;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 21600;
  @:to inline public function toPoint() : Point
    return this * 32;
  @:to inline public function toQuadrant() : Quadrant
    return this * 4;
  @:to inline public function toRadian() : Radian
    return this * 6.28318530717959;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 1296000;
  @:to inline public function toSextant() : Sextant
    return this * 6;
  @:to inline public function toTurn() : Turn
    return this * 1;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "r";
}