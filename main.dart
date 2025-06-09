// Define a class
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method to display information
  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}

// Main function - entry point of the app
void main() {
  // Create a Person object
  Person person1 = Person('Saheb', 25);
  Person person2 = Person('sajid', 15);

  // Call method to display info
  person1.displayInfo();
  person2.displayInfo();
}
