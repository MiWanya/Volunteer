import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Добавить событие', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
