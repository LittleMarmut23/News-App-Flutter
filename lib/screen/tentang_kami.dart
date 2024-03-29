import 'package:flutter/material.dart';

class tentang_kami extends StatefulWidget {
  const tentang_kami({super.key});

  @override
  State<tentang_kami> createState() => _tentang_kamiState();
}

class _tentang_kamiState extends State<tentang_kami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Kami"),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Tentang Aplikasi News Kami",
                  style: TextStyle(
                      fontFamily: "Regular",
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Selamat datang di aplikasi News kami! Kami adalah sumber terpercaya untuk mendapatkan informasi terkini dan terkini dari seluruh dunia. Kami berkomitmen untuk memberikan berita yang akurat, objektif, dan komprehensif kepada pengguna kami.",
                style: TextStyle(
                  fontFamily: "Regular",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Visi kami adalah memajukan dunia informasi dengan memberikan akses yang mudah dan cepat ke berita terbaru dan berkualitas. Kami ingin menjadi mitra andalan Anda dalam mengikuti peristiwa penting, tren, dan topik menarik yang mempengaruhi dunia kita.",
                  style: TextStyle(
                    fontFamily: "Regular",
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Misi kami adalah menyediakan pengalaman membaca yang nyaman dan intuitif melalui aplikasi mobile kami. Kami menyajikan berita dari berbagai sumber terkemuka, termasuk media nasional dan internasional, untuk memberikan sudut pandang yang beragam dan obyektif kepada pengguna kami.",
                  style: TextStyle(
                    fontFamily: "Regular",
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Fitur-fitur kami mencakup berbagai kategori berita seperti politik, bisnis, teknologi, olahraga, hiburan, kesehatan, dan banyak lagi. Dengan pengaturan personalisasi yang cerdas, Anda dapat menyesuaikan preferensi Anda dan menerima pemberitahuan yang relevan sesuai minat Anda.",
                  style: TextStyle(
                    fontFamily: "Regular",
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Kami juga berkomitmen untuk menjaga integritas jurnalisme dengan mematuhi standar etika dan profesionalisme yang tinggi. Keamanan dan privasi data pengguna kami adalah prioritas utama kami. Kami tidak akan pernah membagikan informasi pribadi Anda kepada pihak ketiga tanpa izin Anda.",
                  style: TextStyle(
                    fontFamily: "Regular",
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Kami menghargai masukan dan umpan balik dari pengguna kami. Jika Anda memiliki pertanyaan, saran, atau laporan tentang konten, jangan ragu untuk menghubungi tim kami. Kami berusaha untuk terus meningkatkan pengalaman pengguna kami dan memberikan pelayanan terbaik kepada Anda.",
                  style: TextStyle(
                    fontFamily: "Regular",
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Terima kasih atas dukungan Anda dalam menggunakan aplikasi News kami. Bersama-sama, kami berkomitmen untuk memberikan informasi yang akurat, terpercaya, dan relevan dalam perjalanan Anda mencari pengetahuan dan pemahaman.",
                  style: TextStyle(
                    fontFamily: "Regular",
                  )),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Tim Aplikasi News Kami",
                  style: TextStyle(
                      fontFamily: "Regular",
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final screenWidth = MediaQuery.of(context).size.width;
                      final imageWidth = (screenWidth - 38) / 3;

                      return Column(
                        children: [
                          Container(
                            width: imageWidth,
                            height: imageWidth,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(imageWidth / 2)),
                              child: Image(
                                image: AssetImage('assets/images/leo.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Leo',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '211111237',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final screenWidth = MediaQuery.of(context).size.width;
                      final imageWidth = (screenWidth - 38) / 3;

                      return Column(
                        children: [
                          Container(
                            width: imageWidth,
                            height: imageWidth,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(imageWidth / 2)),
                              child: Image(
                                image: AssetImage('assets/images/david.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'David',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '211110419',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final screenWidth = MediaQuery.of(context).size.width;
                      final imageWidth = (screenWidth - 38) / 3;

                      return Column(
                        children: [
                          Container(
                            width: imageWidth,
                            height: imageWidth,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(imageWidth / 2)),
                              child: Image(
                                image: AssetImage('assets/images/elvens.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Elvens',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '211110323',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
