import "dart:developer";

import "package:flutter/material.dart";
import "package:udemy_clone/src/core/storage/app_storage.dart";


class EntryViewModel extends ChangeNotifier {
  PageController pageController = PageController();
  int currentPage = 0;

  List<String> images = ["assets/images/Developer-activity-bro.svg", "assets/images/Online world-bro.svg", "assets/images/Webinar-amico.svg"];
  List<String> titles = ["Developer title", "World IT languages", "Online tutorials"];
  List<String> descriptions = ["Developer description", "World IT", "online tutorials"];

  void onPageChanged(int index) {
    currentPage = index;
    log(currentPage.toString());
    notifyListeners();
  }

  void saveUser() {
    AppStorage.$write(key: StorageKey.enter, value: "Enter user");
    notifyListeners();
  }
  void deleteUser() {
    AppStorage.$delete(key: StorageKey.enter);
    notifyListeners();
  }


}




