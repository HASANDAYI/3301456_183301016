
import 'package:flutter/material.dart';

import '../myClass/car.dart';

class AraclarimDetay extends StatefulWidget {
  const AraclarimDetay({Key? key, required this.selectedCar}) : super(key: key);
  final Car selectedCar;

  @override
  State<AraclarimDetay> createState() => _AraclarimDetayState();
}

class _AraclarimDetayState extends State<AraclarimDetay> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Araç Detay",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.width * 0.5,
                width: size.width,
                child: Row(
                  children: [
                    Container(
                      height: size.width * 0.5,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                              widget.selectedCar.imagenetworkAdress,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      height: size.width * 0.5,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                              widget.selectedCar.imagenetworkAdress2,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.width * 0.5,
                width: size.width,
                child: Row(
                  children: [
                    Container(
                      height: size.width * 0.5,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                              widget.selectedCar.imagenetworkAdress3,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      height: size.width * 0.5,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                              widget.selectedCar.imagenetworkAdress4,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  "açıklama",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  "arabada çizik vardır",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4),
                child: Container(
                  width: size.width,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(color: Colors.orange.shade300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("Fiyat"), Text("350.000\$")],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Özellikler",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4),
                child: Container(
                  width: size.width,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("Yakıt "), Text("HYBRİD")],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4),
                child: Container(
                  width: size.width,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("Vites "), Text("OTO")],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4),
                child: Container(
                  width: size.width,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("Motor Gücü "), Text("769 hp")],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4),
                child: Container(
                  width: size.width,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("Motor Hacmi "), Text("5.0")],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4),
                child: Container(
                  width: size.width,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("Çekiş"), Text("Arkadan İtiş")],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4),
                child: Container(
                  width: size.width,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("Renk "), Text("Kırmızı")],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 4),
                child: Container(
                  width: size.width,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("Motor Hacmi "), Text("5.0")],
                  ),
                ),
              ),
              const SizedBox(height: 54),
            ],
          ),
        ),
      ),
    );
  }
}
