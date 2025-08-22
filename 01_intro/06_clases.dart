

void main() {
  final Hero wolverine = new Hero(name:'Logan',power: 'Regeneracion');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;
  Hero({required this.name , this.power = 'Sin poder'});
  
  @override
  String toString(){
    return 'Custon message ${this.name} tiene ${power}';
  }
  // Hero(String pName, String pPower)
  //   : name = pName,
  //    power = pPower;
}
