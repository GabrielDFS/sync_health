import './Paciente.dart';
import 'Prontuario.dart';

class MockPacienteData {
  static final paciente1 = Paciente(
    Id: 1,
    nome: 'Carla',
    idade: 30,
    sexo: 'Feminino',
    cpf: '123.456.789-00',
    matricula: '123456',
    senha: '123',
    prontuarios: [
      Prontuario(
        id: 1,
        avaliacaoInicial: 'Paciente se queixa de dores de cabeça e cansaço.',
        problema: 'Diabetes tipo 2 diagnosticado.',
        evolucao: 'Iniciado tratamento com medicamentos e dieta controlada.',
      ),
      Prontuario(
        id: 2,
        avaliacaoInicial:
            'Paciente sofreu queda e sente dor no braço esquerdo.',
        problema: 'Fratura no úmero confirmada por exames de imagem.',
        evolucao: 'Encaminhado para ortopedista para avaliação e tratamento.',
      ),
    ],
  );

  static final paciente2 = Paciente(
    Id: 2,
    nome: 'João',
    idade: 25,
    sexo: 'Masculino',
    cpf: '987.654.321-00',
    matricula: '654321',
    senha: '123',
    prontuarios: [
      Prontuario(
        id: 1,
        avaliacaoInicial: 'Paciente apresenta tontura e visão turva.',
        problema: 'Pressão arterial alta diagnosticada.',
        evolucao:
            'Iniciado tratamento com anti-hipertensivos e monitoramento regular da pressão.',
      ),
      Prontuario(
        id: 2,
        avaliacaoInicial:
            'Paciente relata dor abdominal intensa após refeição.',
        problema: 'Suspeita de apendicite aguda.',
        evolucao:
            'Encaminhado para cirurgia de emergência para remoção do apêndice inflamado.',
      ),
    ],
  );
}
