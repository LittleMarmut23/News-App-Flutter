import 'package:flutter/material.dart';
import 'package:projek1/provider/darkmode.dart';
import 'package:provider/provider.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Material(
          elevation: 10,
          child: Consumer<DarkThemeProvider>(
            builder: (context, themeProvider, _) {
              return TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    hintText: "Search...",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: themeProvider.darkTheme == false
                        ? Colors.white
                        : Color.fromARGB(255, 61, 61, 61)),
              );
            },
          ),
        ),
      ),
    );
  }
}
