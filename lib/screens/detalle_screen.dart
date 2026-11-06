import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetalleScreen extends StatelessWidget {
  final String matricula;
  final String nombre;
  final String carrera;
  final String rol;

  const DetalleScreen({
    super.key,
    required this.matricula,
    required this.nombre,
    required this.carrera,
    required this.rol,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credencial'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.badge, size: 54, color: Colors.teal),
                const SizedBox(height: 12),
                Text('Matrícula: $matricula'),
                const SizedBox(height: 6),
                Text('Nombre: $nombre'),
                const SizedBox(height: 6),
                Text('Carrera: $carrera'),
                const SizedBox(height: 6),
                Text('Rol: $rol'),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Regresar (context.pop)'),
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop();
                    } else {
                      context.go('/');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
