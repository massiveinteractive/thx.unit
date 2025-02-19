package thx.unit.amountofsubstance;

import thx.core.Floats;

// TODO parse string

abstract Mole(Float) {
  @:from inline static public function floatToMole(value : Float) : Mole
    return new Mole(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Mole
    return -this;
  @:op( A+B) inline public function add(other : Mole) : Mole
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Mole) : Mole
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Mole
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Mole
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Mole
    return this % other;
  @:op(A==B) inline public function equal(other : Mole) : Bool
    return this == other;
  public function nearEqual(other : Mole) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Mole) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Mole) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Mole) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Mole) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Mole) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPoundMole() : PoundMole
    return this * 0.00220462262184878;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "mol";
}