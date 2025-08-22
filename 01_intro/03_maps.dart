

void main() {
  final Map<String, dynamic> pokemon = {'name': 'pika', 'hp': 100,'isAlive': true, 'abilities': <String>['fire'],
 'sprites': {
   1: 'pika/front',
   2: 'pika/back'
 }};

  final pokemons = {1: 'a', 2: 'b', 3: 'c', 4: 'd'};

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites']}');
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
  //print(pokemons);
  
}

