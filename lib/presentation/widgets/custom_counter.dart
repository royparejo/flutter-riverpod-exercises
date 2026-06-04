import 'package:flutter/material.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key, required this.count, this.addCount});
  final int count;
  final VoidCallback? addCount;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: addCount,
      label: Text('$count', style: TextStyle(fontSize: 50)),
      icon: Icon(Icons.add, size: 30),
    );
  }
}
