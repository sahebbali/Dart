// Equivalent to the sum function above
// arroyw function in Dart
// int sum(int a, int b) => a + b;

// // Parameters in [] are optional
// // optional parameters in Dart
// String greet(String name, [String? title]) {
//   return title != null ? 'Hello $title $name!' : 'Hello $name!';
// }

// // Parameters in {} are named and optional
// void printUser({required String name, int age = 18}) {
//   print('Name: $name, Age: $age');
// }

// // Default Parameter Values
// String createMessage(String message, [String prefix = 'INFO']) {
//   return '[$prefix] $message';
// }

// // Passing function as parameter
// void processNumbers(int a, int b, int Function(int, int) operation) {
//   print('Result: ${operation(a, b)}');
// }

// // void main() {
//   print(sum(5, 3)); // Output: 8

// optional parameters in Dart
// print(greet('Alice')); // Output: Hello Alice!
// print(greet('Bob', 'Mr.')); // Output: Hello Mr. Bob!

// named parameters in Dart
// printUser(name: 'Charlie');
// printUser(name: 'David', age: 25);

// print(
//   createMessage('This is a test message'),
// ); // Output: [INFO] This is a test message
// print(
//   createMessage('This is an error message', 'ERROR'),
// ); // Output: [ERROR] This is an error message

//   processNumbers(10, 5, sum); // Output: Result: 15
//   processNumbers(10, 5, (a, b) => a - b); // Output: Result: 5
// }

// Anonymous Functions
// void main() {
//   var fruits = ['apple', 'banana', 'orange'];

//   // Using anonymous function with forEach
//   fruits.forEach((fruit) {
//     print(fruit.toUpperCase());
//   });

//   // Shorter arrow syntax
//   fruits.forEach((fruit) => print(fruit.toUpperCase()));
// }

// Closures in Dart
// closer // to the end of the file
// Function makeAdder(int addBy) {
//   return (int i) => addBy + i;
// }

// void main() {
//   var add2 = makeAdder(2);
//   var add5 = makeAdder(5);

//   print(add2(3)); // 5
//   print(add5(3)); // 8
// }

// Generator Functions (sync* and async*)

// Synchronous generator
Iterable<int> countTo(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

// Asynchronous generator
Stream<int> countDelayed(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// void main() {
//   // Sync
//   print(countTo(5).toList()); // [1, 2, 3, 4, 5]

//   // Async
//   countDelayed(3).listen((num) => print(num)); // Prints 1, 2, 3 with 1s delay
// }

// Higher-Order Functions----------
List<int> filter(List<int> numbers, bool Function(int) predicate) {
  return numbers.where(predicate).toList();
}

void main() {
  var numbers = [1, 2, 3, 4, 5, 6];

  var evens = filter(numbers, (n) => n % 2 == 0);
  print(evens); // [2, 4, 6]

  var greaterThan3 = filter(numbers, (n) => n > 3);
  print(greaterThan3); // [4, 5, 6]
}
