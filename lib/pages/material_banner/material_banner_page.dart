import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialBanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final materialbanner = MaterialBanner(
                    content: Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.amber,
                    forceActionsBelow: true,
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: Text('Cancelar'),
                      )
                    ],
                  );

                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(materialbanner);

                  Future.delayed(Duration(seconds: 2), () {
                    ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                  });
                },
                child: Text('Simple Material Banner')),
          ],
        ),
      ),
    );
  }
}
