import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) {
                      return DialogCustom(context);
                    },
                  );
                },
                child: Text('Dialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text('Simple Dialog'),
                        contentPadding: EdgeInsets.all(10),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('TituloX'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Fechar Dialog'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('SimpleDialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      if (Platform.isIOS) {
                        return CupertinoAlertDialog(
                          title: Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Deseja realmente salvar???'),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {}, child: Text('Cancelar')),
                            TextButton(
                                onPressed: () {}, child: Text('Confirmar'))
                          ],
                        );
                      } else {
                        return AlertDialog(
                          title: Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Deseja realmente salvar???'),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {}, child: Text('Cancelar')),
                            TextButton(
                                onPressed: () {}, child: Text('Confirmar'))
                          ],
                        );
                      }
                    },
                  );
                },
                child: Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  if (Platform.isIOS) {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CupertinoTimerPicker(
                          onTimerDurationChanged: (value) {},
                        );
                      },
                    );
                  } else {
                    final selectedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    print('O horario selecionado foi $selectedTime');
                  }
                },
                child: Text('Time Picker')),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                print('a data selecionada foi $selectedDate');
              },
              child: Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                showAboutDialog(
                    context: context,
                    applicationIcon: Icon(Icons.flutter_dash));
              },
              child: Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}