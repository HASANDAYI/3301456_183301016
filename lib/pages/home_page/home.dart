import 'package:flutter/material.dart';

import '../myClass/car.dart';
import 'araclarm_detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "Araçlarım",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: Car.carsStatic.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: (index != Car.carsStatic.length - 1) ? 0 : 24),
              child: Card(
                margin: const EdgeInsets.all(8),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(Car.carsStatic[index].brand,
                          style: const TextStyle(fontSize: 20)),
                      subtitle: Text(
                        Car.carsStatic[index].model,
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Image.network(Car.carsStatic[index].imagenetworkAdress),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        Car.carsStatic[index].aciklama,
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AraclarimDetay(
                                    selectedCar: Car.carsStatic[index]),
                              ));
                            },
                            child: const Text('İncele')),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
