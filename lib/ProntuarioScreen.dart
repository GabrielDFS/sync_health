import 'package:flutter/material.dart';
import './Paciente.dart';

class ProntuarioScreen extends StatelessWidget {
  final Paciente paciente;

  ProntuarioScreen({required this.paciente});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prontuário de ${paciente.nome}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nome: ${paciente.nome}'),
            Text('Idade: ${paciente.idade}'),
            Text('Sexo: ${paciente.sexo}'),
            Text('CPF: ${paciente.cpf}'),
            Text('Matrícula: ${paciente.matricula}'),
            SizedBox(height: 20.0),
            Text(
              'Prontuário:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Iterando sobre a lista de prontuários e exibindo os detalhes de cada um
            for (var prontuario in paciente.prontuarios)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Avaliação Inicial: ${prontuario.avaliacaoInicial}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Problema: ${prontuario.problema}'),
                  Text('Evolução: ${prontuario.evolucao}'),
                  SizedBox(height: 20.0),
                ],
              ),
          ],
        ),
      ),
    );
  }
}