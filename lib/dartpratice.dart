void main() {
  var person = Person();
  person.name = 'Derone';
  person.age = 21;

  if (person.age < 18) {
    print(
        'Hello $person.name, you are not greater than 18 years, then you can not procede with this application!');
  } else {
    print(
        'Hello $person.name, you are greater than 18 years, then you can procede with this application!');
    continueProgram();
  }
}

class Person {
  late String name;
  late int age;
}

addNumbers(num num1, num num2) {
  return num1 + num2;
}

void continueProgram() {
  double firstResult = addNumbers(2, 4.5);
  double secondResult = addNumbers(15, 10.5);

  print('First result: $firstResult');
  print('Second result: $secondResult');
  print('Total: ${firstResult + secondResult}');
}
