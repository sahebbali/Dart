// import 'dart:math';

// class Point {
//   num x, y;
//   Point(this.x, this.y);

//   static num distanceBetween(Point a, Point b) {
//     var dx = a.x - b.x;
//     var dy = a.y - b.y;
//     return sqrt(dx * dx + dy * dy);
//   }
// }

// void main() {
//   var a = Point(2, 2);
//   var b = Point(4, 4);
//   var distance = Point.distanceBetween(a, b);

//   assert(2.8 < distance && distance < 2.9);
//   print(distance);
// }

// enum Color { red, green, blue }

// void main() {
//   var color = Color.blue;

//   if (color == Color.blue) {
//     print('Blue is selected');
//   }
// }

// bool topLevel = true; // Global variable

// void main() {
//   var insideMain = true;

//   void myFunction() {
//     var insideFunction = true;

//     void nestedFunction() {
//       var insideNestedFunction = true;

//       // Assertions to check the visibility of variables
//       assert(topLevel, 'topLevel is not accessible');
//       assert(insideMain, 'insideMain is not accessible');
//       assert(insideFunction, 'insideFunction is not accessible');
//       assert(insideNestedFunction, 'insideNestedFunction is not accessible');

//       print('All assertions passed in nestedFunction.');
//     }

//     nestedFunction(); // Call nestedFunction inside myFunction
//   }

//   myFunction(); // Call myFunction inside main
// }

//   nestedFunction(); // This will cause an error because nestedFunction is not in scope here

// Function type, dynamic also works
Function makeAdder(int initial) {
  int total = initial;

  // nested function
  int addToTotal(int addBy) {
    total += addBy;
    return total;
  }

  return addToTotal;
}

void main() {
  var adder = makeAdder(2);
  var val = adder(5);
  print(val);

  val = adder(3);
  print(val);
}
