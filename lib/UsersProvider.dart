import 'package:flutter/material.dart';
import 'Users.dart';

class UsersProvider extends ChangeNotifier {
  List<Users> _usersList = [
    Users(
        lastName: 'Ляшенко',
        firstName: 'Михаил',
        middleName: 'Владиславович',
        city: 'Донецк',
        username: 'mishanya132',
        password: '12345',
        admin: false),
    Users(
        lastName: 'Пересадин',
        firstName: 'Олег',
        middleName: 'Александрович',
        city: 'Майкоп',
        username: 'oledjo',
        password: '12345',
        admin: false)
  ];

  List<Users> get usersList => _usersList;

  void addUser(Users user) {
    _usersList.add(user);
    notifyListeners(); // Notify any listening widgets that the list has changed
  }

  // Method to find a user for login
  bool checkLogin(String username, String password) {
    for (Users user in _usersList) {
      if (user.username == username && user.password == password) {
        return true;
      }
    }
    return false;
  }

// Other methods for manipulating the list of users or other operations as needed...
}
