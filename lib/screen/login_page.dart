import 'package:flutter/material.dart';
import 'package:projek1/screen/forgetpass_page.dart';
import 'package:projek1/screen/home.dart';
import 'package:projek1/screen/register_page.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/logo.png",
            width: 80,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Masuk ke Akun anda",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Regular'),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  //labelText: "Email atau UserName",
                  hintText: "Email atau NamaPengguna",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Kata Sandi",
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => forgetpass_page()));
                },
                child: Text(
                  "Lupa kata sandi?",
                  style: TextStyle(fontFamily: "Regular"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home(
                                          initialTabIndex: 1,
                                        )));
                          },
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                                fontFamily: "Regular",
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tidak punya akun?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const register_page()));
                      },
                      child: Text("Buat akun")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
