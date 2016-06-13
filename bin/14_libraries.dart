import '../src/lib_a.dart';
import '../src/lib_b/lib_b_1.dart';
import '../src/lib_b/lib_b_3.dart';

main() {
  helloFromA();
  helloFromA1();
  helloFromA2();
  helloFromA3();

  helloFromB1();
  helloFromB3();

  _privateHelloFromA1();
  helloFromB();
  helloFromB2();
}