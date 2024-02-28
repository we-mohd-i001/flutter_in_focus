import 'dart:isolate';

void isolatesAndEventloops() async {
  int a = 10;
  int b = 20;
  int sum = a + b;
  print(sum);

  final myIsolate = await Isolate.spawn((message) {
    final SendPort controlPort;
    final Capability pauseCapabiltiy;


    int a = 10;
    int b = 20;
    int sum = a + b;
    print(sum);
  }, 'Message');

  print(myIsolate);
}