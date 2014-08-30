package thx.unit.length;

abstract Chain(Float) {
  @:from inline static public function floatToChain(value : Float) : Chain
    return new Chain(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Chain
    return -this;
  @:op( A+B) inline public function add(other : Chain) : Chain
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Chain) : Chain
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Chain
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Chain
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Chain
    return this % other;
  @:op(A==B) inline public function equal(other : Chain) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Chain) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Chain) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Chain) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Chain) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Chain) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 0.0201168;
  @:to inline public function toMetre() : Metre
    return this * 20.1168;
  @:to inline public function toCentimetre() : Centimetre
    return this * 2011.68;
  @:to inline public function toMillimetre() : Millimetre
    return this * 20116.8;
  @:to inline public function toMicrometre() : Micrometre
    return this * 20116800;
  @:to inline public function toNanometre() : Nanometre
    return this * 20116800000;
  @:to inline public function toThou() : Thou
    return this * 792000;
  @:to inline public function toInch() : Inch
    return this * 792;
  @:to inline public function toFoot() : Foot
    return this * 66;
  @:to inline public function toYard() : Yard
    return this * 22;
  @:to inline public function toFurlong() : Furlong
    return this * 0.1;
  @:to inline public function toMile() : Mile
    return this * 0.0125;
  @:to inline public function toLeague() : League
    return this * 0.00416666666666667;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ch";
}