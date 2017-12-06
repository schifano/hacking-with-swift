// Hacking With Swift Data Types

var name: String    // type annotation can help with type safety, cant switch types
name = "Beary Bear"

// Fractions use Float or Double. Apple recommends Double. Twice the accuracy.
// Precision, promise the first 15 digits will be correct, 16th may be off
// Float may promise as little as 6
// Double has a precision of at least 15 decimal digits, whereas the precision of Float can be as little as 6 decimal digits. The appropriate floating-point type to use depends on the nature and range of values you need to work with in your code. In situations where either type would be appropriate, Double is preferred.
// -86.783333, Swift will always infer a Double rather than a Float.
var latitude: Double
latitude = 36.1666679999999
latitude = 123456789.123456789

var longitude: Float
longitude = -86.783333
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

// Operators
// += is "add then assign to"
var ten = 10
ten += 10
ten -= 10

// join together strings
var name1 = "Rachel"
var name2 = "Tim"
var join = name1 + " loves " + name2

//  modulus %. It means “divide the left hand number evenly by the right, and return the remainder
var number1 = 9 % 3
var number2 = 10 % 3

// Comparison Operators
var a = 1.1
var b = 2.2
var c = a + b

c > 3
c >= 3
c > 4
c < 4
