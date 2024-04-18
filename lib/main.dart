import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Event.dart';
import 'Register.dart';
import 'Login.dart';
import 'Users.dart';
import 'UsersProvider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsersProvider(),
      child: MaterialApp(
        title: 'Вход',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      )
    );
  }
}

/*class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вход'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Войти'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text('Зарегистрироваться'),
            ),
          ],
        ),
      ),
    );
  }
}
*/

// List<Users> usersList = [
//   Users(
//     lastName: 'Ляшенко',
//     firstName: 'Михаил',
//     middleName: 'Владиславович',
//     city: 'Донецк',
//     username: 'mishanya123',
//     password: '12345',
//     admin: false,
//   ),
//   Users(
//     lastName: 'Пересадин',
//     firstName: 'Олег',
//     middleName: 'Олегович',
//     city: 'Майкоп',
//     username: 'oleg123',
//     password: '54321',
//     admin: true,
//   ),
// ];
//
// class LoginScreen extends StatelessWidget {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Вход'),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: EdgeInsets.all(20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 TextField(
//                   controller: _usernameController,
//                   decoration: InputDecoration(
//                     labelText: 'Имя пользователя',
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: _passwordController,
//                   decoration: InputDecoration(
//                     labelText: 'Пароль',
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     String username = _usernameController.text;
//                     String password = _passwordController.text;
//
//                     bool userFound = false;
//
//                     for (Users user in usersList) {
//                       if (user.username == username && user.password == password) {
//                         userFound = true;
//
//                         Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(builder: (context) => EventPage()),
//                               (route) => false,
//                         );
//                         break;
//                       }
//                     }
//
//                     if (!userFound) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('Неправильное имя пользователя или пароль. Попробуйте снова.'),
//                           duration: Duration(seconds: 3),
//                         ),
//                       );
//                     }
//                   },
//                   child: Text('Войти'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
