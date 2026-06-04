import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/domain/conf_assist_enum.dart';
import 'package:riverpod_app/presentation/screens/02_developers_notifier/developers_notifier_provider.dart';

class DevelopersNotifierScreen extends ConsumerWidget {
  const DevelopersNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Conf')),
      body: DeveloperListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(devListProvider.notifier).addDev();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class DeveloperListView extends ConsumerWidget {
  const DeveloperListView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final currentFiler = ref.watch(filterProvider);
    final devList = ref.watch(devsFilterProvider);
    return Column(
      children: [
        ListTile(
          title: Text('Listado de invitados'),
          subtitle: Text(
            'Estas son las personas invitadas a la conferencia Flutter',
          ),
        ),
        FlutterLogo(size: 70),
        SegmentedButton<ConfAssistEnum>(
          segments: [
            ButtonSegment(value: ConfAssistEnum.all, icon: Text('Todos')),
            ButtonSegment(
              value: ConfAssistEnum.attended,
              icon: Text('Asistieron'),
            ),
            ButtonSegment(
              value: ConfAssistEnum.absentee,
              icon: Text('Ausentes'),
            ),
          ],
          selected: <ConfAssistEnum>{currentFiler},
          onSelectionChanged: (value) {
            ref.read(filterProvider.notifier).toggleFilter(value);
          },
        ),
        SizedBox(height: 5),
        Expanded(
          child: ListView.builder(
            itemCount: devList.length,
            itemBuilder: (_, i) {
              final item = devList[i];
              return SwitchListTile(
                title: Text(item.name),
                value: item.attended,
                onChanged: (_) {
                  ref.read(devListProvider.notifier).toogleAttend(item.id);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
