import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menú',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: const Text("Escritorio"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text("Ingresos"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/listado_ingresos'); // Listado de Ingresos
            },
          ),
          ListTile(
            title: const Text("Deudas"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/listado_deudas'); // Listado de Deudas
            },
          ),
          ListTile(
            title: const Text("Pagos"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/pagos');
            },
          ),
          ListTile(
            title: const Text("Gastos"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/gastos');
            },
          ),
        ],
      ),
    );
  }
}