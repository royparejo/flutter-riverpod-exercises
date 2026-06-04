import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/05_stream_provider/names_stream_provider.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final names = ref.watch(namesProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Stream Provider'), centerTitle: true),
      body: names.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (_, i) => Text(data[i]),
        ),
        error: (_, __) => Text('Error al cargar los nombres'),
        loading: () => CircularProgressIndicator(),
      ),
    );
  }
}
