
1.Create an abstract class 'Vehicle' with an abstract method 'start()'. Create two 
  subclasses 'Car' and 'Bike' that inherit the 'Vehicle' class and implement the 'start()'
  method differently.


void main(){
  Bike bike = Bike();
  bike.start(2);
  Car car = Car();
  car.start(4);
}

abstract class Vehicle{
  void start(int numberOfSeat);
}

class Car implements Vehicle{
  @override
  void start(int numberOfSeat){
    print("Car has ${numberOfSeat}s");
  }
}

class Bike implements Vehicle{
  @override
  void start(int numberOfSeat){
    print("Bike has ${numberOfSeat}s");
  }
}


2. Create a superclass 'Shape' with a method 'draw()' and two subclasses 'Circle' and 'Rectangle' 
  that inherit the 'Shape' class. Implement method overloading in the 'Circle' class and
  method overriding in the 'Rectangle' class.


void main(){
  
}

class Shape{
  void draw({String shape = "No Shape"}){
    print("Shape is $shape");
  }
}

class Circle extends Shape{
  
  void perimeter([double radius = 1]){
    double area = 2 * 3.142 * radius;
    print("Area of circle is $area");
  }
  
  @override
  void perimeter({double pi =9 ,double radius=1 }) {
    double area = 2 * 3.142 * radius;
    print("Area of circle is $area");
  } 
  
}

class Rectangle extends Shape{
  @override
  void draw({String shape = "Rectangle"}){
    print("Shape is $shape");
  }
}



3. Create a superclass 'Animal' with a protected method 'sound()'. Create two subclasses 'Cat' 
  and 'Dog' that inherit the 'Animal' class and call the 'sound()' method from within their
  own method.




void main(){
  Cat cat = Cat();
  cat.voice();
  
  Dog dog = Dog();
  dog.bark();


}


class Animal{
  void sound(){
    print("I cannot speak");
  }
}

class Cat extends Animal{
  
  void voice(){
    sound();
  }
}


class Dog extends Animal{
  void bark(){
    sound();
  }
}

4. Create a class 'Employee' that contains private data members 'name' and 'salary', and 
  a public method 'getSalary()'. Try to create a subclass of the 'Employee' class and create
  a method in child class to print details of the employee.

void main(){
  
  Manager smitha = Manager();
  smitha.setName = "Smitha";
  smitha.setSalary = 1000;
  smitha.printDetails();
}

class Employee{

   String _name = "Manager";
  
   double _salary = 10000;
  
    set setName(String name) {
    _name = name;
   }
  
   set setSalary(double salary) {
    _salary = salary;
    }
  
   double get salary => _salary;
  
   String get name => _name;
   
  
  
 }

class Manager extends Employee{

  void printDetails(){
    print("Name is $_name and Salary is $_salary");
  }
}



5. Create a superclass 'Animal' with a method 'move()'. Create two interfaces 'Swim' and
  'Walk' with the same method 'move()'. Create a subclass 'Fish' that implements the 'Swim' 
  interface and a subclass 'Lion' that implements the 'Walk' interface. Finally, create a 
  class 'SeaLion' that inherits both 'Fish' and 'Lion' classes and overrides the 'move()' method.

void main(){
  
  SeaLion seaLion = SeaLion();
  
  seaLion.move();
  
}

class Animal{
  void move(){
    print("I can move from one place to another");
  }
}

abstract class Swim{
 void move();
}

abstract class Walk{
 void move();
}

class Fish implements Swim{
  @override
  void move(){
     print("I can swim");
  }
}

class Lion implements Walk{
  @override
  void move(){
    print("I can walk");
  }
}

class SeaLion extends Fish with Lion{
  @override
  void move(){
    print("I can swim and walk");
  }
}
