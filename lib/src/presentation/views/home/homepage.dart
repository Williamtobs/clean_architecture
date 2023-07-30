import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../config/router/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.push(const SecondRoute());
                // AutoRouter.of(context).push(const SecondRoute());
              },
              child: const Text('Go to Second Page'),
            ),
            const Center(
              child: Text('Home Page'),
            ),
          ],
        ));
  }
}
