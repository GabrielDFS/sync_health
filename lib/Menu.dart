import 'package:flutter/material.dart';
import './Paciente.dart';
import './ProntuarioScreen.dart';
import './ExamesScreen.dart';

class Menu extends StatelessWidget {
  final Paciente paciente;

  Menu({required this.paciente});

  void _sair(BuildContext context) {
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, ${paciente.nome}!'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              _sair(context); // Retorna à tela de login ao clicar em "Sair"
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
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
