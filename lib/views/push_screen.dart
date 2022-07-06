/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';

class PushScreen extends StatelessWidget {
  const PushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Push Screen'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text('Push Screen',
              style: TextStyle(fontSize: 40, color: Colors.green)),
        ),
      ),
    );
  }
}
