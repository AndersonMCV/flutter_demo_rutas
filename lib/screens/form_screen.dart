import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: Column(
        children: [
          const Text(
            'Ingrese su nombre:',
            style: TextStyle(fontSize: 18),
          ),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Ingresa aquí tu nombre',
            ),
          ),
          const SizedBox(height: 20),

          // --- ARREGLO PRINCIPAL ---
          ElevatedButton.icon(
            onPressed: () {
/*               Navigator.pop(context, _controller.text);
 */            context.go(_controller.text);
  },
            icon: const Icon(Icons.send),
            label: const Text('Enviar'),
          ),
        ],
      ),
    );
  }
}