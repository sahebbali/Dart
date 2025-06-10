// void main() {
//   int num = 10 + 22;
//   num = num - 2;

//   print(num);

//   num = num % 5;
//   print(num);

//   // relational ==, !=, >=, <=
//   if (num == 0) {
//     print('Zero');
//   }

//   num = 100;
//   num *= 2;
//   print(num);

//   // unary operator
//   ++num;
//   num++;
//   num += 1;
//   num -= 1;
//   print(num);

//   // logical && and logical ||
//   if (num > 200 && num < 203) {
//     print('200 to 202');
//   }

//   // != Not Equal
//   if (num != 100) {
//     print('num is not equal to 100');
//   }
// }
void main() {
  String? name;

  // ?? (if null, use right side)
  print(name ?? "Default Name"); // Default Name

  // ??= (assign if null)
  name ??= "Assigned";
  print(name); // Assigned

  // ?. (null-aware access)
  print(name?.length); // 8

  // ! (non-null assertion)
  print(name!.toUpperCase()); // ASSIGNED
}
