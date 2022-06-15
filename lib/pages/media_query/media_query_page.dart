import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('Largura ${mediaQuery.size.width}');
    print('Altura ${mediaQuery.size.height}');
    print('Orientacao ${mediaQuery.orientation}');
    print('Padding TOP ${mediaQuery.padding.top}');
    print('Tamanho AppBarDefault $kToolbarHeight');

    var appBar = AppBar(
      title: Text('MediaQuery'),
    );

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    print('Tamanho AppBar ${appBar.preferredSize.height}');

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width * .50,
              height: heightBody * .5,
            ),
            Container(
              color: Colors.blue,
              width: mediaQuery.size.width,
              height: heightBody * .5,
              // height: heightBody * .5,
            ),
          ],
        ),
      ),
    );
  }
}
