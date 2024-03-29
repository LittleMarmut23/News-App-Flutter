import 'package:flutter/material.dart';
import 'package:projek1/screen/tentang_kami.dart';
import 'package:provider/provider.dart';
import '../provider/darkmode.dart';
import '../screen/setting_page.dart';
import '../screen/topik_page.dart';
import 'logoutWidget.dart';

class drawerWidget extends StatelessWidget {
  const drawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Consumer<DarkThemeProvider>(
            builder: (context, themeProvider, _) {
              return DrawerHeader(
                decoration: BoxDecoration(
                  color: themeProvider.darkTheme == false
                      ? Colors.blue
                      : Colors.grey,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 150,
                    ),
                  ],
                ),
              );
            },
          ),
          ListTile(
            title: Text("Users"),
            subtitle: Text("Users@gmail.com"),
            leading: Container(
              height: 80,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/person2.png"),
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.topic),
            title: Text("Topik"),
            // selected: _selectedDestination == false,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const topik_page()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text("Tentang Kami"),
            // selected: _selectedDestination == false,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const tentang_kami()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Pengaturan"),
            // selected: _selectedDestination == false,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => setting_page()));
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *
                0.43, // Sesuaikan dengan tinggi yang diinginkan
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  height: 1,
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Keluar"),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return logoutWidget();
                        });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
