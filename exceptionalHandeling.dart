// int mustGreaterThanZero(int val) {
//   if (val <= 0) {
//     throw Exception('Value must be greater than zero');
//   }
//   return val;
// }

// void letVerifyTheValue(var val) {
//   var valueVerification;

//   try {
//     valueVerification = mustGreaterThanZero(val);
//   } catch (e) {
//     print(e);
//   } finally {
//     if (valueVerification == null) {
//       print('Value is not accepted');
//     } else {
//       print('Value verified: $valueVerification');
//     }
//   }
// }

// void main() {
//   letVerifyTheValue(16);
//   // letVerifyTheValue(0);
// }
// // letVerifyTheValue(-5);

class Box<T> {
  T value;

  Box(this.value);

  void showValue() {
    print('The value is: $value');
  }
}

// void main() {
//   // Using Box with int
//   var intBox = Box<int>(123);
//   intBox.showValue(); // Output: The value is: 123

//   // Using Box with String
//   var stringBox = Box<String>('Hello');
//   stringBox.showValue(); // Output: The value is: Hello

//   // Using Box with a custom type
//   var listBox = Box<List<String>>(['A', 'B', 'C']);
//   listBox.showValue(); // Output: The value is: [A, B, C]
// }
T getThird<T>(List<T> items) {
  if (items.length >= 3) {
    return items[2]; // Index 2 = 3rd item
  } else {
    throw Exception('List has fewer than 3 items');
  }
}

void main() {
  print(getThird<int>([1, 2, 3, 4])); // Output: 3
  print(getThird<String>(['a', 'b', 'c'])); // Output: c

  // This will throw an exception:
  print(getThird<double>([1.0, 2.0])); // Uncommenting this will throw an error
}
