import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.red,
          );
        },
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter é TOP'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://docs.flutter.dev/assets/images/dash/Dash.png'),
            ),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
