abstract class Person {
  void doWork();
}

abstract class WritesCode {
  doWork() {
    print('Writing code...');
  }
}

abstract class Sings {
  doWork() {
    print('Singing a song...');
  }
}

class Developer extends Person with WritesCode {
}

class Singer extends Person with Sings {
}

main() {
  new Developer().doWork();
  new Singer().doWork();
}
