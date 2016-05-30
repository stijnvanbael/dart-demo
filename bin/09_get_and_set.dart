class Person {
  DateTime _dateOfBirth;

  String get dateOfBirthAsIso8601 => _dateOfBirth.toIso8601String();

  int get dateOfBirthAsMillis => _dateOfBirth.millisecondsSinceEpoch;

  void set dateOfBirthAsIso8601(String iso8601) {
    _dateOfBirth = DateTime.parse(iso8601);
  }

  void set dateOfBirthAsMillis(int millis) {
    _dateOfBirth = new DateTime.fromMillisecondsSinceEpoch(millis);
  }
}

main() {
  Person person = new Person();
  person.dateOfBirthAsIso8601 = '1980-06-15';

  print(person.dateOfBirthAsIso8601);
  print(person.dateOfBirthAsMillis);
}