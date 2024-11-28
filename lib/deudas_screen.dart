import 'package:financial_flow/menu_screen.dart';
import 'package:flutter/material.dart';

class DeudasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deudas"),
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
              decoration: InputDecoration(labelText: "Monto Total", prefixText: "\$"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Número de Cuotas"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Monto por Cuota", prefixText: "\$"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Fecha Primer Vencimiento"),
            ),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem(child: Text("Categoría 1"), value: "cat1"),
                DropdownMenuItem(child: Text("Categoría 2"), value: "cat2"),
              ],
              onChanged: (value) {},
              decoration: InputDecoration(labelText: "Categoría"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Volver")),
                ElevatedButton(onPressed: () {}, child: Text("Guardar")),
              ],
            )
          ],
        ),
      ),
    );
  }
}