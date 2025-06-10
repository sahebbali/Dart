main() {
  // int amount1 = 100;
  // var amount2 = 200;

  // print('Amount1: $amount1 | Amount2: $amount2 \n');

  // double dAmount1 = 100.11;
  // var dAmount2 = 200.22;

  // print('dAmount1: $dAmount1 | dAmount2: $dAmount2 \n');

  // String name1 = 'Mahmud';
  // var name2 = 'Ahsan';

  // print('My name is: $name1 $name2 \n');

  // bool isItTrue1 = true;
  // var isItTrue2 = false;

  // print('isItTrue1: $isItTrue1 | isItTrue2: $isItTrue2 \n');

  // dynamic weakVariable = 100;
  // print('WeakVariable 1: $weakVariable \n');

  // weakVariable = 'Dart Programming';
  // print('WeakVariable 2: $weakVariable');
  // String -> int
  // 🧮 String to int: Converting user input to number
  String ageInput = '25';
  int age = int.parse(ageInput);
  assert(age == 25);
  print('User age is $age');

  // 💰 String to double: Converting price input from a text field
  String priceInput = '99.99';
  double price = double.parse(priceInput);
  assert(price == 99.99);
  print('The price is \$${price}');

  // 🔁 int to String: Showing score as a string
  int score = 150;
  String scoreText = score.toString();
  assert(scoreText == '150');
  print('Your score is: $scoreText');

  // 🧮 double to String with formatting: Showing balance with 2 decimal places
  double balance = 1234.56789;
  String balanceFormatted = balance.toStringAsFixed(
    2,
  ); // rounds to 2 decimal places
  assert(balanceFormatted == '1234.57');
  print('Account Balance: \$${balanceFormatted}');
}
