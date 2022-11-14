import 'package:flutter/material.dart';
import 'package:ret5_db/db/db_notas.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              DBNotas.db.initDatabase();
            }, child: Text("Ver Notas Guardas"))
          ],
        ),
      ),
    );
  }
}