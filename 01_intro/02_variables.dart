

void main() {
  final String pokemon = 'pikachu';
  final int hp = 100 ;
  final bool? isAlive = true;
  final List <String> habilities = ['rayo'];
  final sprites = <String> ['pikachu/ico.png'];
  
  //dynamic == null
  dynamic errorMessage = 'hola';
  
  errorMessage= true;
  errorMessage= {1,2};
  errorMessage= [1,2,43];
  errorMessage= [1,2,43];
  errorMessage= null;
  print("""
  $pokemon
  $hp
  $isAlive
  $habilities
  $sprites
  $errorMessage
  """);
}