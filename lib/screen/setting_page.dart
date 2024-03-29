import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/darkmode.dart';
import '../provider/providerFontSize.dart';

class setting_page extends StatefulWidget {
  const setting_page({Key? key}) : super(key: key);

  @override
  _setting_page createState() => _setting_page();
}

class _setting_page extends State<setting_page> {
  final List<String> items = ["Besar", "Sedang", "Kecil"];
  //String dropdownValue = 'Sedang';
  bool valueNotifikasi = false;
  //bool valueDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DarkThemeProvider>(context);
    final fontProvider = Provider.of<FontSizeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/images/logo.png",
                width: 80,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ListTile(
              title: Text("Dark Mode"),
              subtitle: Text(
                "Beralih ke Aplikasi Dark mode",
                style: TextStyle(fontSize: 12),
              ),
              leading: Icon(Icons.dark_mode),
              trailing: Switch(
                value: themeProvider.darkTheme,
                onChanged: (value) {
                  setState(() {
                    themeProvider.darkMode = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Notifikasi"),
              subtitle: Text(
                "Mengizinkan Notifikasi diberikan ke anda jika terdapat update berita terbaru",
                style: TextStyle(fontSize: 12),
              ),
              leading: Icon(Icons.notifications),
              trailing: Switch(
                value: valueNotifikasi,
                onChanged: (bool? newbool) {
                  setState(() {
                    valueNotifikasi = newbool!;
                  });
                },
              ),
            ),
            Consumer<FontSizeProvider>(
              builder: (context, fontSizeProvider, _) {
                String dropdownValue = fontSizeProvider.dropdownValue;
                return ListTile(
                  title: Text("FontSize"),
                  subtitle: Text(
                    "Mengatur ukuran text Artikel",
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: Icon(Icons.text_fields),
                  trailing: DropdownButton(
                    value: dropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      fontSizeProvider.UbahFontSize(newValue!);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
