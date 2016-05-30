import 'dart:isolate';
import 'dart:async';
import '../src/pass_through_stream.dart';

void echo(SendPort sender) {
  ReceivePort receiver = new ReceivePort();
  sender.send(receiver.sendPort);
  receiver.listen((data) => sender.send('$data (echo)'));
}

main() async {
  ReceivePort mainReceiver = new ReceivePort();
  await Isolate.spawn(echo, mainReceiver.sendPort);

  SendPort sender = await handshake(mainReceiver, print);

  sender.send('Message 1');
  sender.send('Message 2');
}

Future<SendPort> handshake(ReceivePort receiver, Function onData) async {
  PassThroughStream<SendPort> sender = new PassThroughStream<SendPort>();
  receiver.listen((data) {
    if(data is SendPort) {
      sender.pass(data);
    } else {
      onData(data);
    }
  });
  return await sender.first;
}

