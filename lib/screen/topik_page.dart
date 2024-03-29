import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/providerFollowed.dart';
import '../screen/home.dart';
import '../provider/darkmode.dart';

class topik_page extends StatefulWidget {
  const topik_page({super.key});

  @override
  State<topik_page> createState() => _topik_pageState();
}

class _topik_pageState extends State<topik_page> {
  bool checked = false;
  bool tampilLebihBanyak = false;
  void tampilkan() {
    setState(() {
      tampilLebihBanyak = !tampilLebihBanyak;
    });
  }

  final List<String> topikAnime = [
    "Anime",
    "AOT",
    "JujutsuKaisen",
    "Netflix",
    "Nindy",
    "OshiNoKo",
    "Pikachu",
    "PlagiatCharakter",
    "Pokemon",
    "Sinopsis",
    "Tayang",
    "Titan",
    "Tsubasa",
    "Gintama",
    "Cosplay",
    "Boruto"
  ];
  final List<String> topikCriminal = [
    "Tewas",
    "Rampok",
    "Tabrakan",
    "Sabet",
    "Kasus",
    "TNI",
    "Polisi",
    "Begal",
    "Penganiayaan",
    "Jasad",
    "Kejahatan",
    "Korban",
    "Penusukan",
    "Cekcok",
    "Penikaman",
    "Pembunuhan",
  ];
  final List<String> topikEkonomi = [
    "Ekonomi",
    "Minyak",
    "Harga",
    "Bank",
    "IKN",
    "Rupiah",
    "Kripto",
    "BankIndonesia",
    "Kurs",
    "PNS",
    "Keuangan",
    "Dollar",
    "Harga",
    "IHSG",
    "Saham",
    "Bursa"
  ];
  final List<String> topikTeknologi = [
    "Ahli",
    "AR",
    "SmartPhone",
    "Aplikasi",
    "Fitur",
    "AI",
    "Poco",
    "Roket",
    "VR",
    "WhatsApp",
    "Down",
    "Angkasa",
    "Nasa",
    "Akun",
    "Apple",
    "Baterai",
    "Chip",
    "Google",
    "Oled",
    "Astronaut",
    "Android",
    "Instagram",
    "Windows",
    "Xiaomi",
  ];

  final List<String> categories = [
    'kejahatan',
    'anime',
    'politik',
    'pendidikan'
  ];
  @override
  Widget build(BuildContext context) {
    final provFollowed = Provider.of<FollowedProvider>(context);

    return Consumer<DarkThemeProvider>(builder: (context, themeProvider, _) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: themeProvider.darkTheme == false
                ? Colors.blue
                : const Color.fromARGB(255, 54, 54, 54),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            title: Text('Topik'),
          ),
          body: Container(
            color: themeProvider.darkTheme == false
                ? Color.fromARGB(255, 255, 255, 255)
                : Color.fromARGB(255, 34, 34, 34),
            child: Padding(
              padding: const EdgeInsets.only(left: 0, top: 12, bottom: 12),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12, left: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => home(
                                            initialTabIndex: 5,
                                          ),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: themeProvider
                                                    .darkTheme ==
                                                false
                                            ? Color.fromARGB(255, 0, 81, 255)
                                            : Color.fromARGB(255, 68, 68, 68),
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                            80)),
                                    child: Text("Ekonomi")),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => home(
                                            initialTabIndex: 3,
                                          ),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: themeProvider
                                                    .darkTheme ==
                                                false
                                            ? Color.fromARGB(255, 0, 81, 255)
                                            : Color.fromARGB(255, 68, 68, 68),
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                            80)),
                                    child: Text("Teknologi")),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12, left: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => home(
                                            initialTabIndex: 2,
                                          ),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: themeProvider
                                                    .darkTheme ==
                                                false
                                            ? Color.fromARGB(255, 0, 81, 255)
                                            : Color.fromARGB(255, 68, 68, 68),
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                            80)),
                                    child: Text(
                                      "Anime",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => home(
                                            initialTabIndex: 4,
                                          ),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          themeProvider.darkTheme == false
                                              ? Color.fromARGB(255, 0, 81, 255)
                                              : Color.fromARGB(255, 68, 68, 68),
                                      minimumSize: Size(
                                          MediaQuery.of(context).size.width /
                                              2.2,
                                          80),
                                    ),
                                    child: Text("Kriminal",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    if (tampilLebihBanyak)
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 12, left: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => home(
                                              initialTabIndex: 1,
                                            ),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: themeProvider
                                                      .darkTheme ==
                                                  false
                                              ? Color.fromARGB(255, 0, 81, 255)
                                              : Color.fromARGB(255, 68, 68, 68),
                                          minimumSize: Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.2,
                                              80)),
                                      child: Text("Untuk anda",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)))),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => home(
                                              initialTabIndex: 0,
                                            ),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: themeProvider
                                                    .darkTheme ==
                                                false
                                            ? Color.fromARGB(255, 0, 81, 255)
                                            : Color.fromARGB(255, 68, 68, 68),
                                        minimumSize: Size(
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                            80),
                                      ),
                                      child: Text("Mengikuti",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (tampilLebihBanyak == false)
                      TextButton(
                          onPressed: () {
                            tampilkan();
                          },
                          child: Center(child: Text("Tampilkan Lebih banyak"))),
                    if (tampilLebihBanyak == true)
                      TextButton(
                          onPressed: () {
                            tampilkan();
                          },
                          child:
                              Center(child: Text("Tampilkan Lebih sedikit"))),
                    Divider(
                      color: Color.fromARGB(168, 94, 93, 93),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Anime : ",
                          style: TextStyle(
                              color: themeProvider.darkTheme == false
                                  ? Color.fromARGB(255, 0, 0, 0)
                                  : Color.fromARGB(255, 212, 212, 212),
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 300,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    for (String Anime
                                        in topikAnime.sublist(0, 6))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: FilterChip(
                                          label: Text(
                                            Anime,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Anime),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(Anime);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Anime);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    for (String Anime
                                        in topikAnime.sublist(7, 12))
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0, top: 2, bottom: 2),
                                        child: FilterChip(
                                          label: Text(
                                            Anime,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Anime),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(Anime);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Anime);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    for (String Anime
                                        in topikAnime.sublist(13, 15))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: FilterChip(
                                          label: Text(
                                            Anime,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Anime),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(Anime);
                                                print(
                                                    provFollowed.followedList);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Anime);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Criminal : ",
                          style: TextStyle(
                              color: themeProvider.darkTheme == false
                                  ? Color.fromARGB(255, 0, 0, 0)
                                  : Color.fromARGB(255, 212, 212, 212),
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 300,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    for (String Criminal
                                        in topikCriminal.sublist(0, 6))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: FilterChip(
                                          label: Text(
                                            Criminal,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Criminal),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Criminal);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Criminal);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    for (String Criminal
                                        in topikCriminal.sublist(7, 12))
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0, top: 2, bottom: 2),
                                        child: FilterChip(
                                          label: Text(
                                            Criminal,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Criminal),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Criminal);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Criminal);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    for (String Criminal
                                        in topikCriminal.sublist(13, 16))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: FilterChip(
                                          label: Text(
                                            Criminal,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Criminal),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Criminal);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Criminal);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Ekonomi : ",
                          style: TextStyle(
                              color: themeProvider.darkTheme == false
                                  ? Color.fromARGB(255, 0, 0, 0)
                                  : Color.fromARGB(255, 212, 212, 212),
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 300,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    for (String Ekonomi
                                        in topikEkonomi.sublist(0, 6))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: FilterChip(
                                          label: Text(
                                            Ekonomi,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Ekonomi),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Ekonomi);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Ekonomi);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    for (String Ekonomi
                                        in topikEkonomi.sublist(7, 12))
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0, top: 2, bottom: 2),
                                        child: FilterChip(
                                          label: Text(
                                            Ekonomi,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Ekonomi),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Ekonomi);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Ekonomi);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    for (String Ekonomi
                                        in topikEkonomi.sublist(13, 15))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: FilterChip(
                                          label: Text(
                                            Ekonomi,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Ekonomi),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Ekonomi);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Ekonomi);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Teknologi : ",
                          style: TextStyle(
                              color: themeProvider.darkTheme == false
                                  ? Color.fromARGB(255, 0, 0, 0)
                                  : Color.fromARGB(255, 212, 212, 212),
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 300,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    for (String Teknologi
                                        in topikTeknologi.sublist(0, 6))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: FilterChip(
                                          label: Text(
                                            Teknologi,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Teknologi),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Teknologi);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Teknologi);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    for (String Teknologi
                                        in topikTeknologi.sublist(7, 12))
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0, top: 2, bottom: 2),
                                        child: FilterChip(
                                          label: Text(
                                            Teknologi,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Teknologi),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Teknologi);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Teknologi);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    for (String Teknologi
                                        in topikTeknologi.sublist(13, 18))
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: FilterChip(
                                          label: Text(
                                            Teknologi,
                                            // style:
                                            //     TextStyle(color: Colors.white),
                                          ),
                                          selected: provFollowed.followedList
                                              .contains(Teknologi),
                                          selectedColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                          onSelected: (selected) {
                                            setState(() {
                                              if (selected) {
                                                provFollowed.AddFollowed(
                                                    Teknologi);
                                              } else {
                                                provFollowed.RemoveFollowed(
                                                    Teknologi);
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
