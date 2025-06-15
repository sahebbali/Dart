// class Person {
//   String name;
//   int age;

//   // default constructor with initializer list
//   Person(this.name, [this.age = 18]);

//   // named constructor
//   Person.guest() : name = 'Guest', age = 18;

//   void showOutput() {
//     print('Name: $name');
//     print('Age: $age');
//   }
// }

// void main() {
//   var person1 = Person('Jack');
//   Person person2 = Person('Jill', 15);

//   person1.showOutput();
//   person2.showOutput();

//   var person3 = Person.guest();
//   person3.showOutput();
// }
// void main() {
//   final String person1 = 'Jack';
//   const String person2 = 'Jill'; // compile time constant

//   print(person1);
//   print(person2);
// }
// can not reassign
// person1 = 'aa';
// person2 = 'bb';

// class X {
//   final name; // type will be defined by inferred value
//   static const int age = 10;

//   X(this.name);
// }

// main() {
//   var x = X('Jack');
//   print(x.name);
//   print(X.age); // use Classname.StaticVariable
// }

// Class Inheritance
// class Vehicle {
//   String model;
//   int year;

//   Vehicle(this.model, this.year) {
//     print(this.model);
//     print(this.year);
//   }

//   void showOutput() {
//     print(model);
//     print(year);
//   }
// }

// class Car extends Vehicle {
//   double price;

//   Car(String model, int year, this.price) : super(model, year);

//   void showOutput() {
//     super.showOutput();
//     print(this.price);
//   }
// }

// void main() {
//   var car1 = Car('Accord', 2014, 150000);
//   car1.showOutput();
// }

class X {
  String name;

  X(this.name);

  void showOutput() {
    print(this.name);
  }

  dynamic square(dynamic val) {
    return val * val;
  }
}

class Y extends X {
  Y(String name) : super(name);

  @override
  void showOutput() {
    print(this.name);
    print('Hello');
  }

  // not using @override at this time
  dynamic square(dynamic val) {
    return val * val + 2;
  }
}

void main() {
  var obj = Y('Jack');
  obj.showOutput();
  print(obj.square(2));
}
