import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credencial Digital'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.badge, size: 64, color: Colors.indigo),
              const SizedBox(height: 16),
              const Text(
                'Elige una credencial',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Integrante 1 (context.go)'),
                onPressed: () => context.go(
                  '/detalle/23620281?nombre=Alex Antonio Victoria Vázquez&carrera=ISC&rol=Lider',
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                icon: const Icon(Icons.layers),
                label: const Text('Integrante 2 (context.push)'),
                onPressed: () => context.push(
                  '/detalle/23620031?nombre=Isaías Brayan López Domínguez&carrera=ISC&rol=Programador',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
