import 'package:rent_cars_app/data/models/car.dart';
import 'package:rent_cars_app/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
    return await repository.fetchCars();
  }
}
