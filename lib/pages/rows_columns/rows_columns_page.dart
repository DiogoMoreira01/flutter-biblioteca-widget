import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  RowsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows & Column'),
      ),
      body: Container(
        width: 400,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    child: Text('Elemento 1'),
                  ),
                  Text('Elemento 2'),
                  Text('Elemento 3'),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('25'),
                      Text(' '),
                      Text('min'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
