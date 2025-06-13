class Person {
  String name;
  int age;

  // default constructor with initializer list
  Person(this.name, [this.age = 18]);

  // named constructor
  Person.guest() : name = 'Guest', age = 18;

  void showOutput() {
    print('Name: $name');
    print('Age: $age');
  }
}

void main() {
  var person1 = Person('Jack');
  Person person2 = Person('Jill', 15);

  person1.showOutput();
  person2.showOutput();

  var person3 = Person.guest();
  person3.showOutput();
}
