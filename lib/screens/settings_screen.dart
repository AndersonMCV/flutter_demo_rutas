import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'form_screen.dart'; // Asegúrate de tener el archivo correcto

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _returnedData = 'Sin dato';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configuración')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.settings, size: 80, color: Colors.grey),
            const SizedBox(height: 20),

            Text(
              'Valor retornado: $_returnedData',
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormScreen(),
                  ),
                );

                if (result != null) {
                  setState(() {
                    _returnedData = result;
                  });
                }
              },
              icon: const Icon(Icons.input),
              label: const Text('Abrir formulario'),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () {
                //Navigator.pop(context);
                context.pop();
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}