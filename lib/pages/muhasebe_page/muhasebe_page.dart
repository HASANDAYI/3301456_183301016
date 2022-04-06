import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../myClass/car.dart';

class Muhasebe extends StatefulWidget {
  const Muhasebe({Key? key}) : super(key: key);

  @override
  State<Muhasebe> createState() => _MuhasebeState();
}

class _MuhasebeState extends State<Muhasebe> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Muhasebe",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Veriler",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          const Text("Kar Oranı"),
                          Text("Harcanan: ${toplamHarcanan(Car.carsStatic)}"),
                          Text("Kazanılan: ${toplamkazanc(Car.carsStatic)}"),
                          const SizedBox(
                            height: 20,
                          ),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 5.0,
                            percent: yuzdeHesapla(
                                toplamHarcanan(Car.carsStatic),
                                toplamkazanc(Car.carsStatic)),
                            center: Text((yuzdeHesapla(
                                            toplamHarcanan(Car.carsStatic),
                                            toplamkazanc(Car.carsStatic)) *
                                        100)
                                    .round()
                                    .toString() +
                                "%"),
                            progressColor: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          const Text("Satılan araç Oranı"),
                          Text("Toplam Araç: ${Car.carsStatic.length}"),
                          Text(
                              "Satılan Araç: ${aracsatilanhesapla(Car.carsStatic)}"),
                          const SizedBox(
                            height: 20,
                          ),
                          CircularPercentIndicator(
                            radius: 60.0,
                            lineWidth: 5.0,
                            percent: arachesapla(Car.carsStatic),
                            center: Text((arachesapla(Car.carsStatic) * 100)
                                    .round()
                                    .toString() +
                                "%"),
                            progressColor: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Araçlar bilgisi",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.width,
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Car.carsStatic.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: size.width * 0.7,
                      child: Card(
                        color: Colors.grey.shade100,
                        margin: const EdgeInsets.all(8),
                        clipBehavior: Clip.antiAlias,
                        child: (index % 2 == 0)
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                      Car.carsStatic[index].imagenetworkAdress),
                                  ListTile(
                                    title: Text(Car.carsStatic[index].brand,
                                        style: const TextStyle(fontSize: 20)),
                                    subtitle: Text(
                                      Car.carsStatic[index].model,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.6)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Alış Fiyatı : ${Car.carsStatic[index].alisfiyat}",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                        Text(
                                          "Satış Fiyatı : ${Car.carsStatic[index].satisfiyat}",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                        Text(
                                          "En yüksek teklif : ${Car.carsStatic[index].enyuksekfiyat}",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                        Text(
                                          "Durumu : ${Car.carsStatic[index].durum}",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text(Car.carsStatic[index].brand,
                                        style: const TextStyle(fontSize: 20)),
                                    subtitle: Text(
                                      Car.carsStatic[index].model,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.6)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Alış Fiyatı : ${Car.carsStatic[index].alisfiyat}",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                        Text(
                                          "Satış Fiyatı : ${Car.carsStatic[index].satisfiyat}",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                        Text(
                                          "En yüksek teklif : ${Car.carsStatic[index].enyuksekfiyat}",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                        Text(
                                          "Durumu : ${Car.carsStatic[index].durum}",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.network(
                                      Car.carsStatic[index].imagenetworkAdress),
                                ],
                              ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  arachesapla(List<Car> cars) {
    int satilanArac = 0;

    for (int i = 0; i < cars.length; i++) {
      if (cars[i].durum == "satıldı") {
        satilanArac += 1;
      }
    }
    if (satilanArac != 0) {
      return satilanArac / cars.length;
    } else {
      return 0;
    }
  }

  aracsatilanhesapla(List<Car> cars) {
    int satilanArac = 0;

    for (int i = 0; i < cars.length; i++) {
      if (cars[i].durum == "satıldı") {
        satilanArac += 1;
      }
    }
    return satilanArac;
  }

  toplamHarcanan(List<Car> cars) {
    int toplam = 0;
    for (int i = 0; i < cars.length; i++) {
      if (cars[i].durum == "satıldı") {
        toplam += cars[i].alisfiyat;
      }
    }
    return toplam;
  }

  toplamkazanc(List<Car> cars) {
    int toplam = 0;
    for (int i = 0; i < cars.length; i++) {
      if (cars[i].durum == "satıldı") {
        toplam += cars[i].satisfiyat;
      }
    }
    return toplam;
  }

  double yuzdeHesapla(int harcanan, int kazanilan) {
    if (((kazanilan - harcanan) / harcanan) > 1) {
      return 1;
    }

    if (kazanilan > harcanan) {
      return (kazanilan - harcanan) / harcanan;
    } else {
      return 0;
    }
  }
}
