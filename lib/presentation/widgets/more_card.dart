import 'package:flutter/material.dart';
import 'package:rent_cars_app/data/models/car.dart';

class MoreCard extends StatelessWidget {
  final Car car;
  const MoreCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xff212020),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
                color: Colors.black54, blurRadius: 8, offset: Offset(0, 4))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    ">${car.distance} km",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.battery_full,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    car.fualCapacity.toString(),
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              
            ],
          ),
           Icon(Icons.arrow_forward_ios, color: Colors.white, size: 24,)
        ],
      ),
    );
  }
}
