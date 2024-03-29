import 'package:flutter/material.dart';

class privacy_policy_page extends StatefulWidget {
  const privacy_policy_page({super.key});

  @override
  State<privacy_policy_page> createState() => _privacy_policy_pageState();
}

class _privacy_policy_pageState extends State<privacy_policy_page> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Privacy Policy",
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
                    "Kami di Meta ingin Anda memahami informasi apa yang kami kumpulkan, dan bagaimana kami menggunakan dan membagikannya.Itu sebabnya kami mendorong Anda untuk membaca Kebijakan Privasi kami. Ini membantu Anda menggunakan Produk Meta dengan cara yang tepat untuk Anda."),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Dalam Kebijakan Privasi, kami menjelaskan cara kami mengumpulkan, menggunakan, membagikan, menyimpan, dan mentransfer informasi.Kami juga memberi tahu Anda hak-hak Anda. Setiap bagian dari Kebijakan menyertakan contoh yang bermanfaat dan bahasa yang lebih sederhana untuk membuat praktik kami lebih mudah dipahami. Kami juga telah menambahkan tautan ke sumber daya tempat Anda dapat mempelajari lebih lanjut tentang topik privasi yang Anda minati."),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Penting bagi kami bahwa Anda mengetahui cara mengontrol privasi Anda, jadi kami juga menunjukkan kepada Anda di mana Anda dapat mengelola informasi Anda di pengaturan Produk Meta yang Anda gunakan. Kamu bisa untuk membentuk pengalaman Anda."),
                Text("Baca kebijakan selengkapnya di bawah ini."),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "What information do we collect?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ), //title
                Text(
                    "Informasi yang kami kumpulkan dan proses tentang Anda bergantung pada cara Anda menggunakan produk kami. Misalnya,kami mengumpulkan informasi yang berbeda jika Anda menjual furnitur di Marketplace dibandingkan jika Anda memposting reel di Instagram. Saat Anda menggunakan produk kami, kami mengumpulkan beberapa informasi tentang Anda. Bahkan Anda tidak memiliki akun"),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "How will you know the policy has changed?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                    "We'll notify you before we make material changes to this Policy. "),
                Text(
                    "You'll have the opportunity to review the revised Policy before you choose to continue using our products."),
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
