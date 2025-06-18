// File Reading

// import 'dart:io';

// void main() async {
//   File file = File('data.txt');
//   var contents = await file.readAsString();
//   print(contents);
// }

import 'dart:io';

void main() async {
  File file = File('data.txt');
  var content = await file.writeAsString('Life is Good!\n\nI love programming');
  print('File written successfully: $content');
  var contents = await file.readAsString();
  print('File contents: $contents');
}
