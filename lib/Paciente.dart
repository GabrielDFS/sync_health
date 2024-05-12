import 'Prontuario.dart';
import 'Exame.dart';

class Paciente {
  int Id;
  String nome;
  int idade;
  String sexo;
  String cpf;
  String matricula;
  String senha;
  List<Prontuario> prontuarios;
  List<Exame> exames;

  Paciente({
    required this.Id,
    required this.nome,
    required this.idade,
    required this.sexo,
    required this.cpf,
    required this.matricula,
    required this.senha,
    required this.prontuarios,
    required this.exames,
  });
}
