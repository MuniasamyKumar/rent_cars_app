import 'package:flutter/material.dart';
import 'package:rent_cars_app/data/models/car.dart';
import 'package:rent_cars_app/presentation/pages/map_details_page.dart';
import 'package:rent_cars_app/presentation/widgets/car_card.dart';
import 'package:rent_cars_app/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatefulWidget {
  final Car car;
  const CarDetailsPage({super.key, required this.car});

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 10, end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    _controller!.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller!.forward();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text(" Information")],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarCard(
              car: Car(
                  model: widget.car.model,
                  distance: widget.car.distance,
                  fualCapacity: widget.car.fualCapacity,
                  pricePerHour: widget.car.pricePerHour),
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
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MapDetailsPage(car: widget.car),
                            ));
                      },
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  spreadRadius: 5)
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Transform.scale(
                              scale: _animation!.value,
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/maps.png",
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MoreCard(
                      car: Car(
                          model: "${widget.car.model} - 1",
                          distance: widget.car.distance + 100,
                          fualCapacity: widget.car.fualCapacity + 100,
                          pricePerHour: widget.car.pricePerHour)),
                  SizedBox(
                    height: 5,
                  ),
                  MoreCard(
                      car: Car(
                          model: "${widget.car.model} - 2",
                          distance: widget.car.distance + 200,
                          fualCapacity: widget.car.fualCapacity + 200,
                          pricePerHour: widget.car.pricePerHour)),
                  SizedBox(
                    height: 5,
                  ),
                  MoreCard(
                      car: Car(
                          model: "${widget.car.model} - 3",
                          distance: widget.car.distance + 300,
                          fualCapacity: widget.car.fualCapacity + 300,
                          pricePerHour: widget.car.pricePerHour)),
                  SizedBox(
                    height: 5,
                  ),
                  MoreCard(
                      car: Car(
                          model: "${widget.car.model} - 4",
                          distance: widget.car.distance + 400,
                          fualCapacity: widget.car.fualCapacity + 400,
                          pricePerHour: widget.car.pricePerHour)),
                  SizedBox(
                    height: 5,
                  ),
                  MoreCard(
                      car: Car(
                          model: "${widget.car.model} - 5",
                          distance: widget.car.distance + 500,
                          fualCapacity: widget.car.fualCapacity + 500,
                          pricePerHour: widget.car.pricePerHour)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
