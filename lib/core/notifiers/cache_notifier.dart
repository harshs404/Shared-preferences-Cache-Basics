import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheNotifier extends ChangeNotifier {
  //under cache notifier, we will create 3 methods...writeCache...readCache...deleteCache

  Future writeCache({
    required String key,
    required String value,
  }) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    sharedPreferences.setString(key, value);
    notifyListeners();
  }

//in above method, we are declaring some parameters as required...taking them input and setting them in string....after that we notify listeners
  Future readCache({
    required String key,
  }) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    var cache = sharedPreferences.getString(key);
    notifyListeners();
    return cache;
  }

  Future deleteCache({
    required String key,
  }) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    sharedPreferences.remove(key);
    notifyListeners();
  }
}
