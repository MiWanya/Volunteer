import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Users.dart';
import 'UsersProvider.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Регистрация'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Фамилия',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                    labelText: 'Имя',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: middleNameController,
                  decoration: InputDecoration(
                    labelText: 'Отчество',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: cityController,
                  decoration: InputDecoration(
                    labelText: 'Город',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Имя пользователя',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // final usersProvider = Provider.of<AdminsProvider>(context, listen: false);
                    //
                    // final newUser = Admins(
                    //   lastName: lastNameController.text,
                    //   firstName: firstNameController.text,
                    //   middleName: middleNameController.text,
                    //   city: cityController.text,
                    //   username: usernameController.text,
                    //   password: passwordController.text,
                    //   admin: false,
                    // );
                    //
                    // usersProvider.addAdmin(newUser);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Пользователь успешно зарегистрирован!')),
                    );

                    Navigator.pop(context);
                  },
                  child: Text('Зарегистрироваться'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
