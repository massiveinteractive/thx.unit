package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Pound(Float) {
  @:from inline static public function floatToPound(value : Float) : Pound
    return new Pound(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Pound
    return -this;
  @:op( A+B) inline public function add(other : Pound) : Pound
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Pound) : Pound
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Pound
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Pound
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Pound
    return this % other;
  @:op(A==B) inline public function equal(other : Pound) : Bool
    return this == other;
  public function nearEqual(other : Pound) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Pound) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Pound) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Pound) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Pound) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Pound) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 0.00045359237;
  @:to inline public function toKilogram() : Kilogram
    return this * 0.45359237;
  @:to inline public function toGram() : Gram
    return this * 453.59237;
  @:to inline public function toCentigram() : Centigram
    return this * 45359.237;
  @:to inline public function toMilligram() : Milligram
    return this * 453592.37;
  @:to inline public function toMicrogram() : Microgram
    return this * 453592370;
  @:to inline public function toNanogram() : Nanogram
    return this * 453592370000;
  @:to inline public function toPicogram() : Picogram
    return this * 453592370000000;
  @:to inline public function toTon() : Ton
    return this * 0.000446428571428571;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.00892857142857143;
  @:to inline public function toQuarter() : Quarter
    return this * 0.0357142857142857;
  @:to inline public function toStone() : Stone
    return this * 0.0714285714285714;
  @:to inline public function toOunce() : Ounce
    return this * 16;
  @:to inline public function toDrachm() : Drachm
    return this * 256;
  @:to inline public function toGrain() : Grain
    return this * 7000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 2.73159734025891e+26;
  @:to inline public function toDalton() : Dalton
    return this * 2.73159734025891e+26;
  @:to inline public function toPlankMass() : PlankMass
    return this * 20840353.134146;
  @:to inline public function toSlug() : Slug
    return this * 0.0310809500378343;
  @:to inline public function toSolarMass() : SolarMass
    return this * 2.28102069347012e-31;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "lb";
}