import 'package:flutter/material.dart';

class AsyncNotifierScreen extends StatelessWidget {
  const AsyncNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Async Notifier'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            FlutterLogo(size: 70),
            SizedBox(height: 10),
            Text(
              'Pokemon',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
