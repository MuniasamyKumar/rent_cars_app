class Car {
  final String model;
  final double distance;
  final double fualCapacity;
  final double pricePerHour;

  Car(
      {required this.model,
      required this.distance,
      required this.fualCapacity,
      required this.pricePerHour});

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
        model: map['model'],
        distance: map['distance'],
        fualCapacity: map['fualCapacity'],
        pricePerHour: map['pricePerHour']);
  }
}
