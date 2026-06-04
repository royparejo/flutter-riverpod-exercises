import 'package:flutter/material.dart';

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stream Provider'), centerTitle: true),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, i) => Text('item $i'),
      ),
    );
  }
}
