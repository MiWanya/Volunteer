import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Users.dart';
import 'UsersProvider.dart';
import 'Event.dart';
import 'Register.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вход'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Имя пользователя',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    String username = _usernameController.text;
                    String password = _passwordController.text;

                    final usersProvider = Provider.of<UsersProvider>(context, listen: false);
                    final isValidLogin = usersProvider.checkLogin(username, password);

                    if (isValidLogin) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => EventPage()),
                            (route) => false,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Неправильное имя пользователя или пароль. Попробуйте снова.'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    }
                  },
                  child: Text('Войти'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistrationPage()),
                    );
                  },
                  child: Text('Регистрация'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
