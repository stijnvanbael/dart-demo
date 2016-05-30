library pass_through_stream;

import 'dart:async';


class PassThroughStream<T> extends Stream<T> {
  Function onData;

  void pass(T event) {
    if(onData != null)
      onData(event);
  }

  @override
  StreamSubscription<T> listen(void onData(T event), {Function onError, void onDone(), bool cancelOnError}) {
    this.onData = onData;
    return new PassThroughStreamSubscription(this);
  }
}

class PassThroughStreamSubscription<T> extends StreamSubscription<T> {
  PassThroughStream<T> stream;


  PassThroughStreamSubscription(this.stream);

  @override
  Future asFuture([futureValue]) {
    return new Future.value();
  }

  @override
  Future cancel() {
    stream.onData = null;
    return new Future.value();
  }

  @override
  bool get isPaused => false;

  @override
  void onData(void handleData(T data)) {

  }

  @override
  void onDone(void handleDone()) {

  }

  @override
  void onError(Function handleError) {

  }

  @override
  void pause([Future resumeSignal]) {

  }

  @override
  void resume() {

  }
}