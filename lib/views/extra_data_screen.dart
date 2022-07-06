/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';
import 'package:gorouter_example/models/dash.dart';

class ExtraDataScreen extends StatelessWidget {
  const ExtraDataScreen({Key? key, required this.dash}) : super(key: key);
  final FlutterDash dash;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extra Data Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Center(
              child: Text('Gorouter with Extra Data Screen',
                  style: TextStyle(fontSize: 40, color: Colors.green)),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text('${dash.name}',
                  style: const TextStyle(fontSize: 35, color: Colors.indigo)),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dash Can Fly? ',
                    style: TextStyle(fontSize: 35, color: Colors.deepPurple)),
                const SizedBox(width: 30),
                dash.canFly!
                    ? const Icon(
                        Icons.done_all_outlined,
                        color: Colors.green,
                        size: 50,
                      )
                    : const Icon(
                        Icons.error_outline_outlined,
                        color: Colors.red,
                        size: 50,
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
