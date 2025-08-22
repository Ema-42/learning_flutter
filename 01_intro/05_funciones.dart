void main() {
  print(greetEveryone());
  print(greetEveryone2());
  print('SUMA : ${addTwoNumbers(1, 2)}');
  print('SUMA2 : ${addTwoNumbers(12, 2)}');
  print('SUMA Optional : ${addTwoNumbersOptional(12)}');
  print('SUMA Optiona2 : ${addTwoNumbersOptional(13)}');
  print('Saludo : ${greetPerson(name: 'Emanuel',message: 'Saludos')}');
}

String greetEveryone() {
  return 'Hola a todos';
}

String greetEveryone2() => 'Hola a todos 2';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersOptional(int a, [int? b]) {
  b = b ?? 1;
  return a + b;
}

int addTwoNumbersOptional2(int a, [int b = 1]) {
  return a + b;
}

int addTwoNumbers2(int a, int b) => a + b;

String greetPerson({ required String name, String message = 'como estas?'}) {
  return 'Hola ${name}, ${message}';
}
