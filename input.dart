import 'dart:io';

void main() {
  stdout.write('What is your name? ');
  String? name = stdin.readLineSync();

  if (name == null || name.trim().isEmpty) {
    print('You didn’t enter a name.');
  } else {
    print('My name is: ${name.trim()}');
  }
}
