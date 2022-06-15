import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://laisemesquita.com.br/wp-content/uploads/2020/10/ny3.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.white54,
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 48,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              elevation: 12,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'New York',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "A \“cidade que nunca dorme\”, a \"capital do mundo\" ou a \"Big Apple\" são algumas nomenclaturas para Nova York. Localizada em um grande porto natural na costa atlântica do Nordeste dos Estados Unidos, a cidade é composta por cinco distritos: Bronx, Brooklyn, Manhattan, Queens e Staten Island",
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
