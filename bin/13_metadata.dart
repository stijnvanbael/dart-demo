import 'package:reflective/reflective.dart';

abstract class Validator {
  const Validator();

  bool validate(Object o, String fieldName);

  String errorMessage(Object o, String fieldName);
}

class NotNull extends Validator {
  const NotNull(this.a);

  @override
  bool validate(Object o, String fieldName) {
    return instance(o).field(fieldName).value != null;
  }

  @override
  String errorMessage(Object o, String fieldName) => 'Expected not null, was null';
}

const notNull = const NotNull();

validate(Object o) {
  instance(o).type.fields.forEach((fieldName, field) {
    field.allMetadata.forEach((metadata) {
      if(metadata is Validator) {
        if(!metadata.validate(o, fieldName)) {
          throw 'Validation failed for field $fieldName: ${metadata.errorMessage(o, fieldName)}';
        }
      }
    });
  });
}

class Person {
  @notNull
  int id;

  @NotNull('a')
  String name;

  Person({this.id, this.name});


}

main() {
  validate(new Person(id: 1, name: 'John Doe'));

  validate(new Person(name: 'Jane Doe'));
}