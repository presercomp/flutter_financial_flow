import 'package:flutter/material.dart';
import 'escritorio_screen.dart';
import 'gastos_screen.dart';
import 'deudas_screen.dart';
import 'ingresos_screen.dart';
import 'listado_ingresos_screen.dart';
import 'listado_deudas_screen.dart';
import 'pagos_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión Financiera',
      home: EscritorioScreen(),
      routes: {
        '/gastos': (context) => GastosScreen(),
        '/deudas': (context) => DeudasScreen(),
        '/listado_deudas': (context) => ListadoDeudasScreen(),
        '/ingresos': (context) => IngresosScreen(),
        '/listado_ingresos': (context) => ListadoIngresosScreen(), // Nueva ruta
        '/pagos': (context) => PagosScreen(),
      },
    );
  }
}