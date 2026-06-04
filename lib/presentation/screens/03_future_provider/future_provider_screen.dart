import 'package:flutter/material.dart';

class FutureProviderScreen extends StatelessWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future Provider'), centerTitle: true),
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
