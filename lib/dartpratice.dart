void main() {
  var person = Person();
  print(person.name);

  double firstResult = addNumbers(2, 4.5);
  double secondResult = addNumbers(15, 10.5);

  print('First result: $firstResult');
  print('Second result: $secondResult');
  print('Total: ${firstResult + secondResult}');
}

class Person {
  String name = 'Dercio Derone';
  int age = 21;
}

addNumbers(num num1, num num2) {
  return num1 + num2;
}
