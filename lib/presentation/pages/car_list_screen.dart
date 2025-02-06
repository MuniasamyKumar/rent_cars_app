import 'package:flutter/material.dart';
import 'package:rent_cars_app/data/models/car.dart';
import 'package:rent_cars_app/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<Car> cars = [
    Car(
        model: "Fortuner GR",
        distance: 870,
        fualCapacity: 50,
        pricePerHour: 45),
    Car(
        model: "Fortuner GR",
        distance: 870,
        fualCapacity: 50,
        pricePerHour: 45),
    Car(
        model: "Fortuner GR",
        distance: 870,
        fualCapacity: 50,
        pricePerHour: 45),
    Car(
        model: "Fortuner GR",
        distance: 870,
        fualCapacity: 50,
        pricePerHour: 45),
    Car(
        model: "Fortuner GR",
        distance: 870,
        fualCapacity: 50,
        pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text("Choose Your Car"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
