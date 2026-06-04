import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Riverpod'), centerTitle: true),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: FlutterLogo(size: 60),
            ),
          ),
          ListTile(
            title: Text('Counter Notifier'),
            subtitle: Text('Manejo de Notifier de Riverpod'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => context.go('/counter_page'),
          ),
          ListTile(
            title: Text('Flutter Conf'),
            subtitle: Text('combinación de Providers en Riverpod'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => context.go('/developers_page'),
          ),
          ListTile(
            title: Text('Future Provider'),
            subtitle: Text('Manejo de estado de un future'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => context.go('/poke_future_page'),
          ),
          ListTile(
            title: Text('Async Notifier'),
            subtitle: Text('Nueva forma de manejar los Async'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => context.go('/poke_async_page'),
          ),
          ListTile(
            title: Text('Stream Provider'),
            subtitle: Text('Mantener el estado de un Stream'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => context.go('/names_stream_page'),
          ),
        ],
      ),
    );
  }
}
