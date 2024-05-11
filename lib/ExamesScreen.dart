import 'package:flutter/material.dart';
import './Paciente.dart';

class ExamesScreen extends StatelessWidget {
  final Paciente paciente;

  ExamesScreen({required this.paciente});

  @override
  Widget build(BuildContext context) {
    // Aqui você pode implementar a lógica para obter os próximos exames marcados para o paciente
    List<String> proximosExames = [
      'Exame de sangue',
      'Raio-X do tórax',
      'Consulta com cardiologista'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Próximos Exames'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Próximos Exames:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            // Exibir a lista de próximos exames
            ListView.builder(
              shrinkWrap: true,
              itemCount: proximosExames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(proximosExames[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
