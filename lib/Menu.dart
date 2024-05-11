import 'package:flutter/material.dart';
import './Paciente.dart';
import './ProntuarioScreen.dart';
import './ExamesScreen.dart';

class Menu extends StatelessWidget {
  final Paciente paciente;

  Menu({required this.paciente});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, ${paciente.nome}!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navega para a tela de prontuário e passa o objeto Paciente
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProntuarioScreen(paciente: paciente),
                  ),
                );
              },
              child: Text('Prontuário'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navega para a tela de exames
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExamesScreen(paciente: paciente),
                  ),
                );
              },
              child: Text('Exames'),
            ),
          ],
        ),
      ),
    );
  }
}
