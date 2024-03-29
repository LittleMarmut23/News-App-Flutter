import 'package:flutter/material.dart';
import 'package:projek1/screen/profile_page.dart';
import 'package:projek1/screen/video_page.dart';
import 'package:projek1/widget/drawerWidget.dart';
import 'package:projek1/widget/searchWidget.dart';
import 'package:projek1/widget/tab_dan_trending.dart';
import 'package:provider/provider.dart';
import '../provider/darkmode.dart';
import '../provider/providerFollowed.dart';
import '../screen/setting_page.dart';

class home extends StatefulWidget {
  final int initialTabIndex;
  const home({super.key, required this.initialTabIndex});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  PageController _pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _selectedButtomIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedButtomIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    FollowedProvider followedProvider = Provider.of<FollowedProvider>(context);

    TabController _tabController = TabController(
        length: 6, vsync: this, initialIndex: widget.initialTabIndex);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/images/logo.png",
              width: 80,
            ),
          ),
        ),
        drawer: drawerWidget(),
        body: DefaultTabController(
          length: 6,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              if (_selectedButtomIndex == 0) {
                return [
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: searchWidget(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  Consumer<DarkThemeProvider>(
                    builder: (context, themeProvider, _) {
                      return SliverPersistentHeader(
                        delegate: _SliverAppBarDelegate(
                          TabBar(
                            controller: _tabController,
                            isScrollable: true,
                            labelPadding:
                                const EdgeInsets.only(left: 20, right: 20),
                            labelColor: themeProvider.darkTheme == false
                                ? Colors.black
                                : Colors.white,
                            unselectedLabelColor:
                                themeProvider.darkTheme == false
                                    ? Color.fromARGB(255, 123, 123, 123)
                                    : Color.fromARGB(255, 162, 162, 162),
                            tabs: [
                              Tab(
                                text: 'Mengikuti',
                              ),
                              Tab(
                                text: 'Untuk anda',
                              ),
                              Tab(
                                text: 'Anime',
                              ),
                              Tab(
                                text: 'Teknologi',
                              ),
                              Tab(
                                text: 'Criminal',
                              ),
                              Tab(
                                text: 'Ekonomi',
                              ),
                            ],
                          ),
                        ),
                        pinned: true,
                      );
                    },
                  ),
                ];
              } else {
                return [];
              }
            },
            //backgroundColor: Color.fromARGB(244, 214, 214, 214),
            body: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedButtomIndex = index;
                });
              },
              children: [
                Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(controller: _tabController, children: [
                    SingleChildScrollView(
                      child: Consumer<DarkThemeProvider>(
                          builder: (context, themeProvider, _) {
                        return Container(
                          color: themeProvider.darkTheme == false
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 61, 61),
                          child: Column(
                            children: [
                              trendingFollowed(followedProvider),
                              followedTab(followedProvider),
                            ],
                          ),
                        );
                      }),
                    ),
                    SingleChildScrollView(
                      child: Consumer<DarkThemeProvider>(
                          builder: (context, themeProvider, _) {
                        return Container(
                          color: themeProvider.darkTheme == false
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 61, 61),
                          child: Column(
                            children: [
                              Container(
                                color: Color.fromARGB(169, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Trending",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 150,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            trendingForYou(),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              forYouTab(),
                            ],
                          ),
                        );
                      }),
                    ),
                    SingleChildScrollView(
                      child: Consumer<DarkThemeProvider>(
                          builder: (context, themeProvider, _) {
                        return Container(
                          color: themeProvider.darkTheme == false
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 61, 61),
                          child: Column(
                            children: [
                              Container(
                                color: Color.fromARGB(169, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Trending on Anime",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 150,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            trendingAnime(),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              animeTab(),
                            ],
                          ),
                        );
                      }),
                    ),
                    SingleChildScrollView(
                      child: Consumer<DarkThemeProvider>(
                          builder: (context, themeProvider, _) {
                        return Container(
                          color: themeProvider.darkTheme == false
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 61, 61),
                          child: Column(
                            children: [
                              Container(
                                color: Color.fromARGB(169, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Trending on Teknologi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 150,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            trendingTeknologi(),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              teknologiTab(),
                            ],
                          ),
                        );
                      }),
                    ),
                    SingleChildScrollView(
                      child: Consumer<DarkThemeProvider>(
                          builder: (context, themeProvider, _) {
                        return Container(
                          color: themeProvider.darkTheme == false
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color.fromARGB(255, 61, 61, 61),
                          child: Column(
                            children: [
                              Container(
                                color: Color.fromARGB(169, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Trending on Criminal",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 150,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            trendingCriminal(),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              criminalTab(),
                            ],
                          ),
                        );
                      }),
                    ),
                    SingleChildScrollView(child: Consumer<DarkThemeProvider>(
                        builder: (context, themeProvider, _) {
                      return Container(
                        color: themeProvider.darkTheme == false
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color.fromARGB(255, 61, 61, 61),
                        child: Column(
                          children: [
                            Container(
                              color: Color.fromARGB(169, 0, 0, 0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 10),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Trending on Ekonomi",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 150,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          trendingEkonomi(),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            ekonomiTab(),
                          ],
                        ),
                      );
                    })),
                  ]),
                ),
                Container(child: video_page()),
                Container(
                    height: 550,
                    width: double.maxFinite,
                    child: profile_page()),
              ],
            ),
          ),
        ),
        bottomNavigationBar:
            Consumer<DarkThemeProvider>(builder: (context, themeProvider, _) {
          return BottomNavigationBar(
            backgroundColor: themeProvider.darkTheme == false
                ? Color.fromARGB(255, 255, 255, 255)
                : Color.fromARGB(255, 40, 38, 38),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_arrow), label: 'Video'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_sharp), label: 'Profile'),
            ],
            currentIndex: _selectedButtomIndex,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          );
        }));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Consumer<DarkThemeProvider>(builder: (context, themeProvider, _) {
      return Container(
        color: themeProvider.darkTheme == false
            ? Color.fromARGB(255, 249, 249, 249)
            : Color.fromARGB(255, 46, 46, 46),
        child: _tabBar,
      );
    });
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
