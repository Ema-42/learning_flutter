void main() {
  final numbers = [1, 2, 3, 4, 4, 5, 6, 6, 7, 8];
  print('LIST: ${numbers} ');
  print('LIST: ${numbers.length} ');
  print('LIST: ${numbers[0]} ');
  print('LIST: ${numbers.first} ');
  print('LIST: ${numbers.last} ');
  print('REV: ${numbers.reversed} ');

  final reversedNumbers = numbers.reversed;
  print('Iterable : ${reversedNumbers} ');
  print('LIST: ${reversedNumbers.toList()} ');
  print('SET: ${reversedNumbers.toSet()} ');

  final numbersGreateThan5 = numbers.where((num) {
    return num > 5;
  });
  print('MAYOR A 5 : ${numbersGreateThan5.toSet()}');
}
