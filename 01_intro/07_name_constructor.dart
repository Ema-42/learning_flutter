void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony',
    'power': 'A lot Money',
    'isAlive': true,
  };

  final ironman = Hero.fromJson(rawJson);

  //  final ironman = Hero(isAlive: true, name: 'batman', //power: 'dinero');

  print(ironman);
  print(ironman.name);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.isAlive, required this.power});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'sin nombre',
      power = json['power'] ?? 'sin poder',
      isAlive = json['isAlive'] ?? 'no alive';

  @override
  String toString() {
    return '$name, $power , isAlive:${isAlive ? 'YES' : 'NO'}';
  }
}
