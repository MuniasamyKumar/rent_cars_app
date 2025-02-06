import 'package:flutter/material.dart';
import 'package:rent_cars_app/data/models/car.dart';
import 'package:rent_cars_app/presentation/widgets/car_card.dart';
import 'package:rent_cars_app/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;
  const CarDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text(" Information")],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: Car(
                model: "Fortuner GR",
                distance: 870,
                fualCapacity: 50,
                pricePerHour: 45),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5)
                        ]),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/user (2).png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Muniasamy Kumar",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "₹4,234",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/maps.png"),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5)
                        ]),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(car: Car(model:car.model, distance: car.distance, fualCapacity: car.fualCapacity, pricePerHour: car.pricePerHour)),
                SizedBox(height: 5,),
                MoreCard(car: Car(model:car.model, distance: car.distance, fualCapacity: car.fualCapacity, pricePerHour: car.pricePerHour)),
                SizedBox(height: 5,),
                MoreCard(car: Car(model:car.model, distance: car.distance, fualCapacity: car.fualCapacity, pricePerHour: car.pricePerHour)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
