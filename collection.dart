void main() {
  List names = ['Jack', 'Jill'];
  print(names.length);
  for (var n in names) {
    print(n);
  }

  // List<int> ages = [18, 20, 33];
  // for (var a in ages) {
  //   print(a);
  // }

  // List
  List<String> fruits = ['apple', 'banana', 'orange'];
  fruits.add('mango');
  print('Fruits: $fruits');

  // Set
  Set<int> uniqueNumbers = {1, 2, 2, 3};
  print('Unique numbers: $uniqueNumbers'); // {1, 2, 3}

  // Map
  Map<String, int> ages = {'Alice': 25, 'Bob': 30};
  print("Bob's age: ${ages['Bob']}");
}
