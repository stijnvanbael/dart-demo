// Named parameters
// Parameter default values

class Person {
  int id;
  String firstName;
  String lastName;
  DateTime dateOfBirth;

  Person({int id: 1, String firstName, String lastName, DateTime dateOfBirth}) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.dateOfBirth = dateOfBirth;
  }

  @override
  String toString() {
    return 'Person\n'
        '  id: $id\n'
        '  firstName: $firstName\n'
        '  lastName: $lastName\n'
        '  dateOfBirth: $dateOfBirth';
  }
}

main() {
  print(
      new Person(
          id: 1234,
          firstName: 'John',
          lastName: 'Doe',
          dateOfBirth: DateTime.parse('1975-11-01')));

  print(
      new Person(
          firstName: 'Jane',
          lastName: 'Doe',
          dateOfBirth: DateTime.parse('1978-11-01')));
}