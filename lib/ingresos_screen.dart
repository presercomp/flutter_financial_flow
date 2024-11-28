import 'package:financial_flow/menu_screen.dart';
import 'package:flutter/material.dart';

class IngresosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingreso"),
      ),
      drawer: MenuScreen(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Concepto"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Monto", prefixText: "\$"),
              keyboardType: TextInputType.number,
            ),
            CheckboxListTile(
              title: Text("Es Constante"),
              value: false,
              onChanged: (value) {},
            ),
            TextField(
              decoration: InputDecoration(labelText: "Fecha"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Volver")),
                ElevatedButton(onPressed: () {}, child: Text("Guardar")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}