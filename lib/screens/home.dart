import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  final String titulo;

  const MyHomeScreen({
    super.key,
    required this.titulo,
  });

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  bool suscrito = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(widget.titulo),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              mostrarAlerta();
            },
            label: const Text(
              'Suscríbete',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            icon: const Icon(Icons.subscriptions),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Center(
            child: Text(
              suscrito ? 'Suscrito...' : 'No suscrito...',
              style: const TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey[100],
    );
  }

  void mostrarAlerta() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          suscrito ? 'Cancelar suscripción' : 'Suscribirse',
          style: const TextStyle(
            fontSize: 24.0,
          ),
        ),
        content: Text(
          suscrito
              ? 'Lamentamos que canceles tu suscripción'
              : 'Te invitamos a suscribirte...',
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            label: const Text('Cancelar'),
            icon: const Icon(Icons.cancel_outlined),
          ),
          TextButton.icon(
            onPressed: () {
              suscrito = !suscrito;
              setState(() {});
              Navigator.pop(context);
            },
            label: const Text('Aceptar'),
            icon: const Icon(Icons.thumb_up_alt_outlined),
          )
        ],
      ),
    );
  }
}
