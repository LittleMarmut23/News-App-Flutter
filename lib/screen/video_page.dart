import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../provider/darkmode.dart';

class video_page extends StatefulWidget {
  const video_page({super.key});

  @override
  State<video_page> createState() => _video_pageState();
}

class _video_pageState extends State<video_page> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  double _sliderValue = 0.0;
  Duration _duration = Duration();
  Duration _position = Duration();

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/video1.mp4')
      ..initialize().then((_) {
        setState(() {
          _duration = _controller.value.duration;
        });
        _controller.addListener(() {
          setState(() {
            _position = _controller.value.position;
            _sliderValue = _position.inSeconds.toDouble();
          });
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _playPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  void _skipForward() {
    setState(() {
      _controller.seekTo(_position + Duration(seconds: 10));
    });
  }

  void _skipBackward() {
    setState(() {
      _controller.seekTo(_position - Duration(seconds: 10));
    });
  }

  void _onSliderChanged(double value) {
    setState(() {
      _sliderValue = value;
      _position = Duration(seconds: value.toInt());
      _controller.seekTo(_position);
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkThemeProvider>(builder: (context, themeProvider, _) {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: _duration.inSeconds.toDouble(),
              onChanged: _onSliderChanged,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_formatDuration(_position)),
                  IconButton(
                    icon: Icon(Icons.skip_previous),
                    onPressed: _skipBackward,
                  ),
                  IconButton(
                    icon: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                    ),
                    onPressed: _playPause,
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next),
                    onPressed: _skipForward,
                  ),
                  Text(_formatDuration(_duration)),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  //VIDEO 1
                  InkWell(
                    onTap: () {
                      setState(() {
                        _controller.pause();
                        _controller = VideoPlayerController.asset(
                            'assets/videos/video1.mp4')
                          ..initialize().then((_) {
                            setState(() {
                              _duration = _controller.value.duration;
                            });
                            _controller.addListener(() {
                              setState(() {
                                _position = _controller.value.position;
                                _sliderValue = _position.inSeconds.toDouble();
                              });
                            });
                            _controller.play();
                            _isPlaying = true;
                            _sliderValue = 0.0;
                          });
                      });
                    },
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width - 40,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //color: Colors.white,
                          border: Border.all(
                              color: themeProvider.darkTheme == false
                                  ? const Color.fromARGB(100, 0, 0, 0)
                                  : Colors.grey)),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  //topRight: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/thumbnail1.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Viral! Aldi Taher Malah Nyanyi Lagu Coldplay saat Ditanya soal Nyaleg ",
                                    maxLines: 2,
                                    style: TextStyle(
                                      //color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //VIDEO 2
                  InkWell(
                    onTap: () {
                      setState(() {
                        _controller.pause();
                        _controller = VideoPlayerController.asset(
                            'assets/videos/video2.mp4')
                          ..initialize().then((_) {
                            setState(() {
                              _duration = _controller.value.duration;
                            });
                            _controller.addListener(() {
                              setState(() {
                                _position = _controller.value.position;
                                _sliderValue = _position.inSeconds.toDouble();
                              });
                            });
                            _controller.play();
                            _isPlaying = true;
                            _sliderValue = 0.0;
                          });
                      });
                    },
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width - 40,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //color: Colors.white,
                          border: Border.all(
                              color: themeProvider.darkTheme == false
                                  ? const Color.fromARGB(100, 0, 0, 0)
                                  : Colors.grey)),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  //topRight: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/thumbnail2.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Sergio Busquets Gabung Inter Miami, Reuni Lagi dengan Messi",
                                    maxLines: 2,
                                    style: TextStyle(
                                      //color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //VIDEO 3
                  InkWell(
                    onTap: () {
                      setState(() {
                        _controller.pause();
                        _controller = VideoPlayerController.asset(
                            'assets/videos/video3.mp4')
                          ..initialize().then((_) {
                            setState(() {
                              _duration = _controller.value.duration;
                            });
                            _controller.addListener(() {
                              setState(() {
                                _position = _controller.value.position;
                                _sliderValue = _position.inSeconds.toDouble();
                              });
                            });
                            _controller.play();
                            _isPlaying = true;
                            _sliderValue = 0.0;
                          });
                      });
                    },
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width - 40,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //color: Colors.white,
                          border: Border.all(
                              color: themeProvider.darkTheme == false
                                  ? const Color.fromARGB(100, 0, 0, 0)
                                  : Colors.grey)),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  //topRight: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/thumbnail3.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Dewi Perssik Belum Pernah Potong Kurban Dilingkungan RT, Pertama kali Dititipkan Langsung Cekcok",
                                    maxLines: 2,
                                    style: TextStyle(
                                      //color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //VIDEO 4

                  InkWell(
                    onTap: () {
                      setState(() {
                        _controller.pause();
                        _controller = VideoPlayerController.asset(
                            'assets/videos/video4.mp4')
                          ..initialize().then((_) {
                            setState(() {
                              _duration = _controller.value.duration;
                            });
                            _controller.addListener(() {
                              setState(() {
                                _position = _controller.value.position;
                                _sliderValue = _position.inSeconds.toDouble();
                              });
                            });
                            _controller.play();
                            _isPlaying = true;
                            _sliderValue = 0.0;
                          });
                      });
                    },
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width - 40,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          // color: Colors.white,
                          border: Border.all(
                              color: themeProvider.darkTheme == false
                                  ? const Color.fromARGB(100, 0, 0, 0)
                                  : Colors.grey)),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  //topRight: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/thumbnail4.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Kepala Sekolah Sebut Siswa SMP yang Bakar Sekolah Sosok yang Caper: Dia Minta Perhatian Lebih",
                                    maxLines: 2,
                                    style: TextStyle(
                                      // color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //VIDEO 5

                  InkWell(
                    onTap: () {
                      setState(() {
                        _controller.pause();
                        _controller = VideoPlayerController.asset(
                            'assets/videos/video5.mp4')
                          ..initialize().then((_) {
                            setState(() {
                              _duration = _controller.value.duration;
                            });
                            _controller.addListener(() {
                              setState(() {
                                _position = _controller.value.position;
                                _sliderValue = _position.inSeconds.toDouble();
                              });
                            });
                            _controller.play();
                            _isPlaying = true;
                            _sliderValue = 0.0;
                          });
                      });
                    },
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width - 40,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //color: Colors.white,
                          border: Border.all(
                              color: themeProvider.darkTheme == false
                                  ? const Color.fromARGB(100, 0, 0, 0)
                                  : Colors.grey)),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  //topRight: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/thumbnail5.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "6 Kecamatan di Kabupaten Lahat Diterjang Banjir Bandang, 1 Warga Meninggal Dunia!",
                                    maxLines: 2,
                                    style: TextStyle(
                                      //color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //Pemisah
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
