// File Reading

import 'dart:io';

void main() async {
  File file = File('data.txt');
  var contents = await file.readAsString();
  print(contents);
}
