import 'package:alert_dialog/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AlertDialog());

class AlertDialog extends StatelessWidget {
  const AlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    const String tituloApp = 'Diálogo de alerta';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: tituloApp,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
      ),
      home: MyHomeScreen(
        titulo: tituloApp,
      ),
    );
  }
}
