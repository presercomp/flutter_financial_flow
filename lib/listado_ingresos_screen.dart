import 'package:flutter/material.dart';
import 'menu_screen.dart';

class ListadoIngresosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ingresos"),
      ),
      drawer: MenuScreen(), // Incluimos el Drawer para navegación
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text("Sueldo"),
                    subtitle: Text("Constante - \$2,000,000"),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Freelance"),
                    subtitle: Text("Único - \$500,000"),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("Inversión"),
                    subtitle: Text("Constante - \$200,000"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/'); // Volver al escritorio
                  },
                  child: const Text("Volver"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ingresos'); // Agregar nuevo ingreso
                  },
                  child: const Text("Agregar"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}