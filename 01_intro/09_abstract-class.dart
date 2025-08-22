void main() {
  final winPlant = WindPlant(initialEnergy: 100);
  print(winPlant);
  print('Wind: ${chargePhone(winPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enought energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nucleat, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

//extends o implements ()
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
