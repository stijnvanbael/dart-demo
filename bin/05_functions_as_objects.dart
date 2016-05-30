// Functions as objects
// Async / await
// Import Dart library

import 'dart:async';

greet() {
  print('Hi!');
}

delay(Function toDelay, int seconds) async {
  print('Delaying for ${seconds}s...');
  await sleep(seconds * 1000);
  toDelay();
}

sleep(int millis) {
  Completer completer = new Completer();
  new Timer(new Duration(milliseconds: millis), () => completer.complete() );
  return completer.future;
}

main() {
  delay(greet, 2);
}
