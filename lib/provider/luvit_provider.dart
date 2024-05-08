
import 'package:flutter/foundation.dart';

class LuvItProvider extends ChangeNotifier{


  int _activeIndex = 0;
  int get activeIndex => _activeIndex;

  set setPosition(int id) {
    _activeIndex = id;
    notifyListeners();
  }

}