import 'package:rent_cars_app/data/models/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
