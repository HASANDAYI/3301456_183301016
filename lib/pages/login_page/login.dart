import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:galeria/pages/login_page/register_page.dart';
import '../my_navbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController kullaniciadi = TextEditingController();
  TextEditingController psw = TextEditingController();

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
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (kullaniciadi.text.isEmpty || psw.text.isEmpty) {
                fToast.showToast(
                  toastDuration: const Duration(seconds: 2),
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.cancel),
                          Text(
                            "Kullanıcı adı veya şifre boş olamaz",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  gravity: ToastGravity.BOTTOM,
                );
                // boş olamaz
              } else if (kullaniciadi.text.length < 3) {
                fToast.showToast(
                  toastDuration: const Duration(seconds: 2),
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.cancel),
                          Text(
                            "Kullanıcı adı 3 dden büyük",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  gravity: ToastGravity.BOTTOM,
                );
                //3 den büyük olmalıdır
              } else if (psw.text.length < 3) {
                fToast.showToast(
                  toastDuration: const Duration(seconds: 2),
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.cancel),
                          Text(
                            " şifre 3 den büyük",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  gravity: ToastGravity.BOTTOM,
                );
                //3 den büyük olmalıdır
              } else if (!(psw.text.contains("."))) {
                fToast.showToast(
                  toastDuration: const Duration(seconds: 2),
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.cancel),
                          Text(
                            "şifre içerir nokta",
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  gravity: ToastGravity.BOTTOM,
                );
                //3 den büyük olmalıdır
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MyNavBar(),
                ));
              }

              /* Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyNavBar(),
              ));*/
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 50.0),
              child: Text(
                "Giriş",
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
                  builder: (context) => const Register(),
                ));
              },
              child: const Text("Kayıt Ol"))
        ],
      ),
    );
  }
}
