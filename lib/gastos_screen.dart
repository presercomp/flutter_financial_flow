import 'package:financial_flow/menu_screen.dart';
import 'package:flutter/material.dart';

class GastosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gasto"),
      ),
      drawer: MenuScreen(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: "Concepto"),
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Monto", prefixText: "\$"),
              keyboardType: TextInputType.number,
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Fecha"),
            ),
            DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(child: Text("Categoría 1"), value: "cat1"),
                DropdownMenuItem(child: Text("Categoría 2"), value: "cat2"),
              ],
              onChanged: (value) {},
              decoration: const InputDecoration(labelText: "Categoría"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Volver")),
                ElevatedButton(onPressed: () {}, child: const Text("Guardar")),
              ],
            )
          ],
        ),
      ),
    );
  }
}