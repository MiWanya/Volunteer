import 'package:flutter/material.dart';
import 'Users.dart';
import 'Admins.dart';
import 'Register.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'Admins.dart';

class AdminsProvider extends ChangeNotifier {

  List<Admins> _adminsList = [];
  late Admins admins;

  getAdminsFromSheet() async {
    var raw = await http.get(
        Uri.parse("https://script.google.com/macros/s/AKfycbxRVLUg9ZCYxAF-WalMi-jrcY8Ux2kP2kIKQrrjMx_dZhYoCyWQil9e9vX9gJ_Z1ZCqCQ/exec")
    );
    var jsonAdmins = convert.jsonDecode(raw.body);
    print("THIS IS DECODE $jsonAdmins");

    jsonAdmins.forEach((element){
      print(element);
      admins = Admins(
        password: element['Пароль'].toString() ?? '',
        firstName: element['Имя'].toString() ?? '',
        lastName: element['Фамилия'].toString() ?? '',
        middleName: element['Отчество'].toString() ?? '',
        city: element['Город'].toString() ?? '',
      );
      _adminsList.add(admins);

      print('${admins.firstName}');
    });
  }

  List<Admins> get adminsList => _adminsList;

  void addAdmin(Admins admin) {
    _adminsList.add(admin);
    notifyListeners();
  }

  bool checkLogin(String firstName, String lastName, String middleName) {
    for (Admins admin in _adminsList) {
      if (admin.firstName == firstName && admin.lastName == lastName && admin.middleName == middleName) {
        return true;
      }
    }
    return false;
  }

  bool checkPassword(String password){
    for (Admins admin in _adminsList) {
      if (admin.password == password) {
        return true;
      }
    }
    return false;
  }
}

// class UsersProvider extends ChangeNotifier {
//   List<Users> _usersList = [
//     Users(
//         lastName: 'Lyashenko',
//         firstName: 'Mikhail',
//         middleName: 'Vlad',
//         city: 'Донецк',
//         username: 'mishanya132',
//         password: '12345',
//         admin: true),
//     Users(
//         lastName: 'Пересадин',
//         firstName: 'Олег',
//         middleName: 'Александрович',
//         city: 'Майкоп',
//         username: 'oledjo',
//         password: '12345',
//         admin: true)
//   ];
//
//   List<Users> get usersList => _usersList;
//
//   void addUser(Users user) {
//     _usersList.add(user);
//     notifyListeners();
//   }
//
//   bool checkLogin(String firstName, String lastName, String middleName) {
//     for (Users user in _usersList) {
//       if (user.firstName == firstName && user.lastName == lastName && user.middleName == middleName) {
//         return true;
//       }
//     }
//     return false;
//   }
//
//   bool checkPassword(String password){
//     for (Users user in _usersList) {
//       if (user.password == password) {
//         return true;
//       }
//     }
//     return false;
//   }
// }
