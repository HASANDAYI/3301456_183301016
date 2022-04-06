import 'package:flutter/material.dart';

class DersIcerik extends StatefulWidget {
  const DersIcerik({Key? key}) : super(key: key);

  @override
  State<DersIcerik> createState() => _DersIcerikState();
}

class _DersIcerikState extends State<DersIcerik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Ödevdir",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Bu uygulama Dr.Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183301016 numaralı Hasan Dayı tarafından 3 Nisan Pazar günü yapılmıştır.",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
