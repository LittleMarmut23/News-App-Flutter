import 'package:flutter/material.dart';
import 'package:projek1/screen/cookies_policy_page.dart';
import 'package:projek1/screen/login_page.dart';
import 'package:projek1/screen/privacy_policy_page.dart';
import 'package:projek1/screen/register_kirim_code.dart';
import 'package:projek1/widget/DatePickerField%20.dart';

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "register",
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/logo.png",
            width: 80,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Daftar Akun Kamu",
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
                        hintText: "Nama Pengguna",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                RadioListTile(
                    title: Text(
                      "Laki-Laki",
                      style: TextStyle(fontSize: 15, fontFamily: 'Regular'),
                    ),
                    value: "Laki-Laki",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    }),
                RadioListTile(
                    title: Text(
                      "Perempuan",
                      style: TextStyle(fontSize: 15, fontFamily: 'Regular'),
                    ),
                    value: "Perempuan",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    }),
                TanggalLahir(),
                TextField(
                  decoration: InputDecoration(
                      //prefixIcon: Icon(Icons.email),
                      hintText: "Email",
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
                    hintText: "Kata sandi",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dengan mendaftar, Anda menyetujui Ketentuan kami,",
                      style: TextStyle(fontFamily: 'Regular'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => privacy_policy_page()));
                        },
                        child: Text(
                          "Kebijakan Privasi",
                          style: TextStyle(fontFamily: 'Regular'),
                        )),
                    Text("dan"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cookies_policy_page()));
                        },
                        child: Text(
                          "Kebijakan Cookies",
                          style: TextStyle(fontFamily: 'Regular'),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterKirimCode()));
                            },
                            child: Text(
                              "Daftar",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Regular',
                                  color: Colors.black,
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
                    Text(
                      "Sudah Punya Akun? klik",
                      style: TextStyle(fontFamily: 'Regular'),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const login_page()));
                        },
                        child: Text(
                          "Masuk",
                          style: TextStyle(fontFamily: 'Regular'),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
