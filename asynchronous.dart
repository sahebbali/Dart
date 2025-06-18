// Future delayedPrint(int seconds, String msg) {
//   final duration = Duration(seconds: seconds);
//   return Future.delayed(duration).then((value) => msg);
// }

// main() {
//   print('Life');
//   delayedPrint(2, "Is")
//       .then((status) {
//         print(status);
//       })
//       .catchError((err) => print(err));
//   print('Good');
// }

void task1() {
  print('Task 1 Done.');
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 2);

  String result = "";

  await Future.delayed(duration, () {
    print('Task 2 Done.');
    result = ' Task 2 Data';
  });

  return result;
}

void task3(String result) {
  print('Task 3 Done. $result');
}

void main() async {
  task1();
  String result = await task2();
  task3(result);
}
