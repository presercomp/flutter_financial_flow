import 'package:financial_flow/menu_screen.dart';
import 'package:flutter/material.dart';

class EscritorioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escritorio"),
      ),
      drawer: MenuScreen(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Pagos pendientes"),
                subtitle: Text("\$4,792,700"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Proyección Próximo Mes"),
                subtitle: Text("-\$40,700"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Gráficos"),
                leading: Icon(Icons.pie_chart),
              ),
            ),
          ],
        ),
      ),
    );
  }
}