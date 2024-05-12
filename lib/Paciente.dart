import 'Prontuario.dart';
import 'Exame.dart'; // Importe a classe Exame

class Paciente {
  int Id;
  String nome;
  int idade;
  String sexo;
  String cpf;
  String matricula;
  String senha;
  List<Prontuario> prontuarios;
  List<Exame> exames; // Adicionando a lista de exames

  // Construtor
  Paciente({
    required this.Id,
    required this.nome,
    required this.idade,
    required this.sexo,
    required this.cpf,
    required this.matricula,
    required this.senha,
    required this.prontuarios,
    required this.exames, // Inicializando a lista de exames
  });
}
