import 'package:flutter/material.dart';
import '../classe/Paciente.dart';

class ProntuarioScreen extends StatelessWidget {
  final Paciente paciente;

  ProntuarioScreen({required this.paciente});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 75, 177, 228),
        title: Text(
          'Prontuário de ${paciente.nome}',
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
              'Nome: ${paciente.nome}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Idade: ${paciente.idade}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Sexo: ${paciente.sexo}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'CPF: ${paciente.cpf}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Matrícula: ${paciente.matricula}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Prontuário:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            for (var prontuario in paciente.prontuarios)
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Avaliação Inicial: ${prontuario.avaliacaoInicial}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Problema: ${prontuario.problema}'),
                      Text('Evolução: ${prontuario.evolucao}'),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
