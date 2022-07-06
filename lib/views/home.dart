/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';
import 'package:gorouter_example/models/dash.dart';
import 'package:gorouter_example/views/widgets/buttons.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            iOutlinedButtonNoKey(
              context,
              'GoRouter Push Screen',
              () => context
                  .push('/push_screen'), // TODO: if you want push navigate
            ),
            const SizedBox(height: 20),
            iOutlinedButtonNoKey(
              context,
              'GoRouter Go Screen',
              () => context.go('/go_screen'), // TODO: if you want go navigate
            ),
            const SizedBox(height: 20),
            iOutlinedButtonNoKey(
              context,
              'GoRouter Push with Extra Data Screen',
              () => context.push('/push_extra_data_screen',
                  extra: const FlutterDash(
                    name: 'My Name is Dash',
                    canFly: true,
                  )), // TODO: if you want push with extra data navigate
            ),
            const SizedBox(height: 20),
            iOutlinedButtonNoKey(
              context,
              'GoRouter Go with Extra Data Screen',
              () => context.go('/go_extra_data_screen',
                  extra: const FlutterDash(
                    name: 'My Name is Hero Dash',
                    canFly: false,
                  )), // TODO: if you want go with extra data navigate
            ),
          ],
        ),
      ),
    );
  }
}
