import 'package:flutter/material.dart';
import './Paciente.dart';
import './Exame.dart'; // Importe a classe Exame

class ExamesScreen extends StatelessWidget {
  final Paciente paciente;

  ExamesScreen({required this.paciente});

  @override
  Widget build(BuildContext context) {
    // Obtendo os próximos exames marcados para o paciente
    List<Exame> proximosExames = paciente.exames;

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
            // Exibir os exames em formato de lista
            ListView.builder(
              shrinkWrap: true,
              itemCount: proximosExames.length,
              itemBuilder: (context, index) {
                // Obtendo o nome do exame, a data e o endereço
                String nomeExame = proximosExames[index].nome;
                DateTime dataExame = proximosExames[index].data;
                String dataFormatada =
                    '${dataExame.day}/${dataExame.month}/${dataExame.year}';
                String enderecoExame = proximosExames[index].endereco;

                return Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nomeExame,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          dataFormatada,
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Text(
                          enderecoExame,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
