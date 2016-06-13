library lib_a_1;

helloFromA1() {
  print('Hi, I''m Lib A 1');
  _privateHelloFromA1();
}

_privateHelloFromA1() {
  print('Hi, I''m a private from Lib A 1');
}