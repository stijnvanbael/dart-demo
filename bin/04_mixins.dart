abstract class Person {
  String name = 'a';
  void doWork();
}

abstract class WritesCode {
  String name = 'b';
  doWork() {
    print('Writing code...');
  }
}

abstract class Sings {
  doWork() {
    print('Singing a song...');
  }
}

class Developer extends Object with Person, WritesCode {
  doWork() {
    super.doWork();
    print(name);
  }
}

class Singer extends Person with Sings {
}

main() {
  new Developer().doWork();
  new Singer().doWork();
}
