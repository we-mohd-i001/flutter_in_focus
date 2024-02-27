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


class MyIsolate implements Isolate{
  @override
  void addErrorListener(SendPort port) {
    // TODO: implement addErrorListener
  }

  @override
  void addOnExitListener(SendPort responsePort, {Object? response}) {
    // TODO: implement addOnExitListener
  }

  @override
  // TODO: implement controlPort
  SendPort get controlPort => throw UnimplementedError();

  @override
  // TODO: implement debugName
  String? get debugName => throw UnimplementedError();

  @override
  // TODO: implement errors
  Stream get errors => throw UnimplementedError();

  @override
  void kill({int priority = beforeNextEvent}) {
    // TODO: implement kill
  }

  @override
  Capability pause([Capability? resumeCapability]) {
    // TODO: implement pause
    throw UnimplementedError();
  }

  @override
  // TODO: implement pauseCapability
  Capability? get pauseCapability => throw UnimplementedError();

  @override
  void ping(SendPort responsePort, {Object? response, int priority = immediate}) {
    // TODO: implement ping
  }

  @override
  void removeErrorListener(SendPort port) {
    // TODO: implement removeErrorListener
  }

  @override
  void removeOnExitListener(SendPort responsePort) {
    // TODO: implement removeOnExitListener
  }

  @override
  void resume(Capability resumeCapability) {
    // TODO: implement resume
  }

  @override
  void setErrorsFatal(bool errorsAreFatal) {
    // TODO: implement setErrorsFatal
  }

  @override
  // TODO: implement terminateCapability
  Capability? get terminateCapability => throw UnimplementedError();

}