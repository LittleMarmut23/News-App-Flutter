import 'package:flutter/material.dart';

class FollowedProvider with ChangeNotifier {
  List<String> _followedList = [];

  List<String> get followedList => _followedList;

  void AddFollowed(String followed) {
    print(followed);
    _followedList.add(followed);
    print(_followedList);
    notifyListeners();
  }

  void RemoveFollowed(String followed) {
    print("Hapus : ${followed}");
    _followedList.remove(followed);
    notifyListeners();
  }

  bool isFollowed(String topic) {
    return _followedList.contains(topic);
  }
}
