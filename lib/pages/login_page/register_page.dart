import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController kullaniciadi = TextEditingController();
  TextEditingController psw = TextEditingController();
  TextEditingController isim = TextEditingController();
  TextEditingController soyisim = TextEditingController();
  TextEditingController mail = TextEditingController();

  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    kullaniciadi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("images/bg.png"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  controller: kullaniciadi,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Kullanıcı Adınızı Giriniz',
                    labelText: 'Kullanıcı Adı *',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  controller: psw,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Parolanızı Giriniz',
                    labelText: 'Parola *',
                  ),
                ),
                TextFormField(
                  controller: isim,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.drive_file_rename_outline),
                    hintText: 'isim Giriniz',
                    labelText: 'İsim *',
                  ),
                ),
                TextFormField(
                  controller: soyisim,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.drive_file_rename_outline),
                    hintText: 'soyisim Giriniz',
                    labelText: 'Soyisim *',
                  ),
                ),
                TextFormField(
                  controller: mail,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: 'Mail Giriniz',
                    labelText: 'Mail *',
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 50.0),
              child: Text(
                "Kayıt ol",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Login(),
                ));
              },
              child: const Text("Zaten hesabın var mı? Giriş yap"))
        ],
      ),
    );
  }
}
