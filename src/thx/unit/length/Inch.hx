package thx.unit.length;

abstract Inch(Float) {
  @:from inline static public function floatToInch(value : Float) : Inch
    return new Inch(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Inch
    return -this;
  @:op( A+B) inline public function add(other : Inch) : Inch
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Inch) : Inch
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Inch
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Inch
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Inch
    return this % other;
  @:op(A==B) inline public function equal(other : Inch) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Inch) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Inch) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Inch) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Inch) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Inch) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 2.54e-05;
  @:to inline public function toMetre() : Metre
    return this * 0.0254;
  @:to inline public function toCentimetre() : Centimetre
    return this * 2.54;
  @:to inline public function toMillimetre() : Millimetre
    return this * 25.4;
  @:to inline public function toMicrometre() : Micrometre
    return this * 25400;
  @:to inline public function toNanometre() : Nanometre
    return this * 25400000;
  @:to inline public function toThou() : Thou
    return this * 1000;
  @:to inline public function toFoot() : Foot
    return this * 0.0833333333333333;
  @:to inline public function toYard() : Yard
    return this * 0.0277777777777778;
  @:to inline public function toChain() : Chain
    return this * 0.00126262626262626;
  @:to inline public function toFurlong() : Furlong
    return this * 0.000126262626262626;
  @:to inline public function toMile() : Mile
    return this * 1.57828282828283e-05;
  @:to inline public function toLeague() : League
    return this * 5.26094276094276e-06;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "in";
}