import 'Prontuario.dart';

class Paciente {
  int Id;
  String nome;
  int idade;
  String sexo;
  String cpf;
  String matricula;
  String senha;
  List<Prontuario> prontuarios; // Adicionando campo para os prontuários

  // Construtor
  Paciente({
    required this.Id,
    required this.nome,
    required this.idade,
    required this.sexo,
    required this.cpf,
    required this.matricula,
    required this.senha,
    required this.prontuarios, // Inicializando a lista de prontuários
  });
}
