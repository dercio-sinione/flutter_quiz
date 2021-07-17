void main() {
  var person = Person();
  person.name = 'Derone';
  person.age = 21;
  print('Hello $person.name, your age is $person.age');

  double firstResult = addNumbers(2, 4.5);
  double secondResult = addNumbers(15, 10.5);

  print('First result: $firstResult');
  print('Second result: $secondResult');
  print('Total: ${firstResult + secondResult}');
}

class Person {
  late String name;
  late int age;
}

addNumbers(num num1, num num2) {
  return num1 + num2;
}
