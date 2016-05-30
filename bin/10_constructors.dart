// Automatic parameter binding
// Factory methods

abstract class Person {
  String name;

  Person(this.name);

  factory Person.customer(String name) => new Customer(name);

  factory Person.employee(String name) => new Employee(name);
}

class Customer extends Person {
  Customer(String name) : super(name);

  @override
  String toString() => 'Customer: $name';
}

class Employee extends Person {
  Employee(String name) : super(name);

  @override
  String toString() => 'Employee: $name';
}


main() {
  print(new Person.customer('John Doe'));
  print(new Person.employee('Jane Doe'));
}