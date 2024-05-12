import 'package:flutter/material.dart';
import './Paciente.dart';
import './Exame.dart';
class ExamesScreen extends StatelessWidget {
  final Paciente paciente;

  ExamesScreen({required this.paciente});

  @override
  Widget build(BuildContext context) {
    List<Exame> proximosExames = paciente.exames;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 75, 177, 228),
        title: Text(
          'Próximos Exames',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 254, 254),
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle:
                FontStyle.italic,
            fontFamily: 'Roboto',
          ),
        ),
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
            ListView.builder(
              shrinkWrap: true,
              itemCount: proximosExames.length,
              itemBuilder: (context, index) {
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
