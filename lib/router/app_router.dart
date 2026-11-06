import 'package:go_router/go_router.dart';

import '../screens/detalle_screen.dart';
import '../screens/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detalle/:id',
      name: 'detalle',
      builder: (context, state) {
        return DetalleScreen(
          matricula: state.pathParameters['id']!,
          nombre: state.uri.queryParameters['nombre']!,
          carrera: state.uri.queryParameters['carrera']!,
          rol: state.uri.queryParameters['rol']!,
        );
      },
    ),
  ],
);
