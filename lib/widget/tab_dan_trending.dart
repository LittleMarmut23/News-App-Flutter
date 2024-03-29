import 'package:flutter/material.dart';

import 'package:projek1/screen/Tabs/templateKotakBerita.dart';
import 'package:projek1/screen/Tabs/templateKotakBerita2.dart';
import '../data/data.dart';
import '../provider/providerFollowed.dart';

Widget forYouTab() {
  List<Widget> forYouList = [];
  for (Artikel artikel in dataArtikel) {
    forYouList.add(templateKotakBerita(artikel: artikel));
  }
  return Column(
    children: forYouList,
  );
}

Widget animeTab() {
  List<Widget> animeList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.kategori == "Anime") {
      animeList.add(templateKotakBerita(artikel: artikel));
    }
  }
  return Column(
    children: animeList,
  );
}

Widget teknologiTab() {
  List<Widget> teknologiList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.kategori == "Teknologi") {
      teknologiList.add(templateKotakBerita(artikel: artikel));
    }
  }
  return Column(
    children: teknologiList,
  );
}

Widget criminalTab() {
  List<Widget> criminalList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.kategori == "Criminal") {
      criminalList.add(templateKotakBerita(artikel: artikel));
    }
  }
  return Column(
    children: criminalList,
  );
}

Widget ekonomiTab() {
  List<Widget> ekonomiList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.kategori == "Ekonomi") {
      ekonomiList.add(templateKotakBerita(artikel: artikel));
    }
  }
  return Column(
    children: ekonomiList,
  );
}

Widget followedTab(FollowedProvider followedProvider) {
  List<Artikel> filteredArtikel = dataArtikel.where((artikel) {
    return artikel.topik
        .any((topik) => followedProvider.followedList.contains(topik));
  }).toList();

  List<Widget> followedListWidgets = filteredArtikel.map((artikel) {
    return templateKotakBerita(artikel: artikel);
  }).toList();
  if (followedListWidgets.isEmpty) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/notfound.png',
                width: 200,
              ),
              Text(
                  "Tidak ada terlihat topik yang diikuti, silahkan pilih topik yang ingin di ikuti, untuk memilih topik klik menu di pojok atas kiri dan pilih topik."),
            ],
          ),
        ),
      ),
    );
  }
  return SingleChildScrollView(
    child: Column(
      children: followedListWidgets,
    ),
  );
}

// }
Widget trendingFollowed(FollowedProvider followedProvider) {
  List<Widget> trendingFollowedList = [];

  for (Artikel artikel in dataArtikel) {
    if (artikel.trending == true) {
      // Pengecekan apakah setidaknya satu topik artikel ada dalam followedList
      if (artikel.topik
          .any((topik) => followedProvider.followedList.contains(topik))) {
        trendingFollowedList.add(templateKotakBerita2(artikel: artikel));
      }
    }
  }

  if (trendingFollowedList.isEmpty) {
    return Container();
  }

  return Container(
    color: Color.fromARGB(169, 0, 0, 0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Trending on Followed",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: trendingFollowedList,
          ),
        ),
      ],
    ),
  );
}

Widget trendingForYou() {
  List<Widget> trendingForYouList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.trending == true) {
      trendingForYouList.add(templateKotakBerita2(artikel: artikel));
    }
  }
  return Row(
    children: trendingForYouList,
  );
}

Widget trendingAnime() {
  List<Widget> trendingAnimeList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.trending == true) {
      if (artikel.kategori == "Anime") {
        trendingAnimeList.add(templateKotakBerita2(artikel: artikel));
      }
    }
  }
  return Row(
    children: trendingAnimeList,
  );
}

Widget trendingCriminal() {
  List<Widget> trendingCriminalList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.trending == true) {
      if (artikel.kategori == "Criminal") {
        trendingCriminalList.add(templateKotakBerita2(artikel: artikel));
      }
    }
  }
  return Row(
    children: trendingCriminalList,
  );
}

Widget trendingTeknologi() {
  List<Widget> trendingTeknologiList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.trending == true) {
      if (artikel.kategori == "Teknologi") {
        trendingTeknologiList.add(templateKotakBerita2(artikel: artikel));
      }
    }
  }
  return Row(
    children: trendingTeknologiList,
  );
}

Widget trendingEkonomi() {
  List<Widget> trendingEkonomiList = [];
  for (Artikel artikel in dataArtikel) {
    if (artikel.trending == true) {
      if (artikel.kategori == "Ekonomi") {
        trendingEkonomiList.add(templateKotakBerita2(artikel: artikel));
      }
    }
  }
  return Row(
    children: trendingEkonomiList,
  );
}
