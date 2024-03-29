import 'package:flutter/material.dart';

class cookies_policy_page extends StatefulWidget {
  const cookies_policy_page({super.key});

  @override
  State<cookies_policy_page> createState() => _cookies_policy_pageState();
}

class _cookies_policy_pageState extends State<cookies_policy_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/logo.png",
            width: 80,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Cookies Policy",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ), //title
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Effective 1 January 2023",
                  style: TextStyle(color: Color.fromARGB(255, 96, 96, 96)),
                ), //sub title
                SizedBox(
                  height: 12,
                ),
                Text(
                  "1. Pendahuluan:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Kami ingin memberikan informasi yang transparan kepada Anda tentang penggunaan cookies dalam aplikasi berita kami. Kebijakan Cookies ini menjelaskan bagaimana cookies digunakan dan bagaimana Anda dapat mengelola preferensi Anda terkait dengan cookies."),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "2. Apa itu cookies?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Cookies adalah file teks kecil yang disimpan di perangkat Anda saat Anda menggunakan aplikasi berita kami. Cookies mengandung informasi tentang perilaku penjelajahan Anda, preferensi, dan pengaturan aplikasi."),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "3. Jenis cookies yang digunakan:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Cookies yang sangat diperlukan: Kami menggunakan cookies yang sangat diperlukan untuk memastikan aplikasi berita kami berfungsi dengan baik. Cookies ini tidak dapat dinonaktifkan dan tidak mengumpulkan informasi pribadi."),
                Text(
                    "- Cookies kinerja: Kami menggunakan cookies kinerja untuk mengumpulkan informasi anonim tentang bagaimana Anda menggunakan aplikasi berita kami. Informasi ini membantu kami meningkatkan kinerja aplikasi dan pengalaman pengguna."),
                Text(
                  "4. Cookies pihak ketiga:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Dalam beberapa kasus, kami dapat memperbolehkan layanan pihak ketiga, seperti penyedia analitik atau iklan, untuk menggunakan cookies dalam aplikasi berita kami. Harap dicatat bahwa cookies pihak ketiga ini tunduk pada kebijakan privasi masing-masing dan kami tidak mengendalikannya."),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "5. Pengelolaan cookies:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Anda dapat mengelola preferensi cookies Anda melalui pengaturan aplikasi atau perangkat Anda. Biasanya, pengaturan ini dapat ditemukan di menu 'Pengaturan' atau 'Privasi' aplikasi atau perangkat Anda."),
                Text(
                    "- Harap diingat bahwa dengan menonaktifkan atau menghapus cookies tertentu, beberapa fitur aplikasi berita kami mungkin tidak berfungsi dengan baik."),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "6. Pengumpulan data dan privasi:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Kami menghargai privasi Anda dan hanya mengumpulkan informasi yang diperlukan untuk menyediakan layanan aplikasi berita kami. Untuk informasi lebih lanjut tentang pengumpulan, penggunaan, dan perlindungan data Anda, silakan merujuk ke kebijakan privasi kami."),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "7. Persetujuan penggunaan cookies:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Dengan melanjutkan penggunaan aplikasi berita kami, Anda memberikan persetujuan Anda untuk penggunaan cookies sebagaimana dijelaskan dalam Kebijakan Cookies ini"),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "8. Pembaruan Kebijakan Cookies:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Kebijakan Cookies ini dapat diperbarui dari waktu ke waktu. Kami akan menginformasikan tentang perubahan penting pada Kebijakan Cookies melalui pemberitahuan di aplikasi atau melalui metode lain yang sesuai."),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "9. Informasi kontak:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    "- Jika Anda memiliki pertanyaan atau masalah terkait dengan Kebijakan Cookies ini"),
                SizedBox(
                  height: 7,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
