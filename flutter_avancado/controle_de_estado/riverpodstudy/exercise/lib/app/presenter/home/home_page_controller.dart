import 'package:flutter/foundation.dart';

class FavoritesController extends ChangeNotifier {
  String fruit = "unknow";

  void changFruit(String newFruit) {
    fruit = newFruit;

    notifyListeners();
  }
}
