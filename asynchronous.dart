// // Future delayedPrint(int seconds, String msg) {
// //   final duration = Duration(seconds: seconds);
// //   return Future.delayed(duration).then((value) => msg);
// // }

// // main() {
// //   print('Life');
// //   delayedPrint(2, "Is")
// //       .then((status) {
// //         print(status);
// //       })
// //       .catchError((err) => print(err));
// //   print('Good');
// // }

// void task1() {
//   print('Task 1 Done.');
// }

// Future<String> task2() async {
//   Duration duration = Duration(seconds: 2);

//   String result = "";

//   await Future.delayed(duration, () {
//     print('Task 2 Done.');
//     result = ' Task 2 Data';
//   });

//   return result;
// }

// void task3(String result) {
//   print('Task 3 Done. $result');
// }

// void main() async {
//   task1();
//   String result = await task2();
//   task3(result);
// }
import 'dart:async';
import 'dart:math';

class RandomNumberGenerator {
  final StreamController<int> _controller = StreamController<int>();
  final Random _random = Random();
  int _count = 0;
  int _times = 0;

  RandomNumberGenerator() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _count = _random.nextInt(100); // Generate random number 0–99
      _controller.sink.add(_count);
      _times++;

      if (_times > 5) {
        timer.cancel();
        _controller.close();
      }
    });
  }

  Stream<int> get stream => _controller.stream;
}

void main() {
  final randomStream = RandomNumberGenerator().stream;

  final subscription = randomStream.listen(
    (data) => print('Random number: $data'),
    onError: (err) => print('Error: $err'),
    onDone: () => print('Stream closed.'),
    cancelOnError: false,
  );
}
