import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/darkmode.dart';
import '../screen/login_page.dart';

class logoutWidget extends StatelessWidget {
  const logoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkThemeProvider>(builder: (context, themeProvider, _) {
      return Dialog(
          backgroundColor: themeProvider.darkTheme == false
              ? Color.fromARGB(255, 253, 229, 237)
              : Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 400,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 120,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Oh Tidak! Kamu akan keluar...",
                      style: TextStyle(fontFamily: 'Regular', fontSize: 18),
                    ),
                    Text(
                      "Apakah kamu yakin ?",
                      style: TextStyle(fontFamily: 'Regular', fontSize: 18),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(250, 35),
                            backgroundColor: Color.fromARGB(255, 249, 124, 166),
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.normal),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Tidak jadi deh",
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(250, 35),
                            backgroundColor: Color.fromARGB(255, 253, 229, 237),
                            textStyle: TextStyle(
                                color: Color.fromARGB(255, 249, 124, 166),
                                fontFamily: "Regular",
                                fontSize: 18),
                            side: BorderSide(color: Colors.pink, width: 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => login_page()));
                        },
                        child: Text(
                          "Iya, saya yakin",
                          style: TextStyle(
                              color: Color.fromARGB(255, 249, 124, 166),
                              fontFamily: 'Regular',
                              fontSize: 18),
                        ))
                  ],
                ),
              )
            ],
          ));
    });
  }
}
