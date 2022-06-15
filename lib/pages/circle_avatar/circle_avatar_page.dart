import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
      ),
      body: Row(
        children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     // backgroundImage: NetworkImage('https://www.dci.com.br/wp-content/uploads/2021/01/gettyimages-1158969134_widexl-450x300.jpg'),
          //     // backgroundImage: NetworkImage('https://i.pinimg.com/236x/7f/15/a1/7f15a1633a2b72516ab9133139ac0adb.jpg'),
          //   ),

          // )
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageAvatar(
                urlImage:
                    'https://www.dci.com.br/wp-content/uploads/2021/01/gettyimages-1158969134_widexl-450x300.jpg'),
          ),
          ImageAvatar(
              urlImage:
                  'https://i.pinimg.com/236x/7f/15/a1/7f15a1633a2b72516ab9133139ac0adb.jpg')
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.black],
              begin: Alignment.topCenter
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
              child: Text(
                'AO VIVO',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
