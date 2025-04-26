import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Fixed import
import '../models/user_model.dart';

class UserProvider with ChangeNotifier {
  UserModel? _user;
  final SharedPreferences prefs;

  UserProvider(this.prefs) {
    _loadUser();
  }

  UserModel? get user => _user;

  Future<void> _loadUser() async {
    final name = prefs.getString('user_name');
    final currency = prefs.getString('currency') ?? 'USD';
    
    if (name != null) {
      _user = UserModel(name: name, currency: currency);
      notifyListeners();
    }
  }

  Future<void> setUser(String name, [String currency = 'USD']) async {
    await prefs.setString('user_name', name);
    await prefs.setString('currency', currency);
    _user = UserModel(name: name, currency: currency);
    notifyListeners();
  }

  Future<void> setCurrency(String currency) async {
    if (_user != null) {
      await prefs.setString('currency', currency);
      _user = UserModel(name: _user!.name, currency: currency);
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await prefs.clear();
    _user = null;
    notifyListeners();
  }
}
