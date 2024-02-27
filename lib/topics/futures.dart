import 'package:flutter/cupertino.dart';

void futures() {
  print('=========================Main========================');
  final myFuture = Future(() {
    print('Creating the future');
    return 12;
  }).then((value) => print(value));

  final myFutureNew = Future.value(12);
  final futureError = Future.error(Exception());
  Future.delayed(Duration(milliseconds: 2), () {
    return 100;
  });
  Future<int>.delayed(Duration(seconds: 2), () {
    return 100;
  }).then((value) => debugPrint('$value')).catchError((err) {
    print(err);
  }).whenComplete(() => print('Completed'));

  print('=====================Done with main==================');
}
