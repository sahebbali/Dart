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

// class X {
//   String name;

//   X(this.name);

//   void showOutput() {
//     print(this.name);
//   }

//   dynamic square(dynamic val) {
//     return val * val;
//   }
// }

// class Y extends X {
//   Y(String name) : super(name);

//   @override
//   void showOutput() {
//     print(this.name);
//     print('Hello');
//   }

//   // not using @override at this time
//   dynamic square(dynamic val) {
//     return val * val + 2;
//   }
// }

// void main() {
//   var obj = Y('Jack');
//   obj.showOutput();
//   print(obj.square(2));
// }

// class Rectangle {
//   num left, top, width, height;

//   Rectangle(this.left, this.top, this.width, this.height);

//   // Define two calculated properties: right and bottom.
//   num get right => left + width;
//   set right(num value) => left = value - width;
//   num get bottom => top + height;
//   set bottom(num value) => top = value - height;
// }

// void main() {
//   var rect = Rectangle(3, 4, 20, 15);
//   assert(rect.left == 3);
//   rect.right = 12;
//   assert(rect.left == -8);
// }

// Abstract Class and Abstract Method

// abstract class Human {
//   final String _type;

//   Human(this._type);

//   void showType();
// }

// class Man extends Human {
//   Man(String type) : super(type);

//   void showType() {
//     print(_type);
//   }
// }

// class Woman extends Human {
//   Woman(String type) : super(type);

//   void showType() {
//     print(_type);
//   }
// }

// void main() {
//   // polymorphism
//   Human human;
//   Man person1 = Man('man');
//   Woman person2 = Woman('woman');

//   human = person1;
//   human.showType();

//   human = person2;
//   human.showType();
// }

// Mixins

class Robot {
  void perform() {
    print("Performing");
  }
}

mixin Walk {
  void perform() {
    print("Walking");
  }
}

mixin Run {
  void perform() {
    print("Running");
  }
}

class IRobo extends Robot with Walk, Run {
  void showActivity() {
    perform();
  }
}

void main() {
  IRobo robo = IRobo();
  robo.showActivity();
}
