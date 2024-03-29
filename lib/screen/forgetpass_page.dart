import 'package:flutter/material.dart';

class forgetpass_page extends StatefulWidget {
  const forgetpass_page({super.key});

  @override
  State<forgetpass_page> createState() => _forgetpass_pageState();
}

class _forgetpass_pageState extends State<forgetpass_page> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "forget pass",
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/logo.png",
            width: 80,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Lupa Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Regular',
                    fontSize: 28),
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                  decoration: InputDecoration(
                      //prefixIcon: Icon(Icons.person),
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
              SizedBox(
                height: 8,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {}, child: Text("Kirim kode ke email"))),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.email),
                    hintText: "Kode Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                  //prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Password Baru",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Ubah Password",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Regular',
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Kembali")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
