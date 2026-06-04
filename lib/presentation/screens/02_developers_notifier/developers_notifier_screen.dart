import 'package:flutter/material.dart';
import 'package:riverpod_app/domain/conf_assist_enum.dart';

class DevelopersNotifierScreen extends StatelessWidget {
  const DevelopersNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Conf')),
      body: DeveloperListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class DeveloperListView extends StatelessWidget {
  const DeveloperListView({super.key});

  @override
  Widget build(BuildContext context) {
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
          selected: <ConfAssistEnum>{ConfAssistEnum.all},
          onSelectionChanged: (value) {
            //
          },
        ),
        SizedBox(height: 5),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (_, i) {
              return SwitchListTile(
                title: Text('item $i'),
                value: false,
                onChanged: (_) {
                  //
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
