import 'package:flutter/material.dart';
import './Paciente.dart';
import './mock_data.dart';
import 'Menu.dart';
// Importe o arquivo de dados mocados

class LoginFormState extends State {
  final Paciente paciente1 = MockPacienteData.paciente1; // Use os dados mocados
  final Paciente paciente2 = MockPacienteData.paciente2; // Use os dados mocados

  String _cpf = '';
  String _password = '';

  static final GlobalKey<LoginFormState> loginFormKey =
      GlobalKey<LoginFormState>();

  static LoginFormState? of(BuildContext context) {
    return context.findAncestorStateOfType<LoginFormState>();
  }

  void _login() {
    Paciente? pacienteLogado;

    if (_cpf == paciente1.cpf && _password == paciente1.senha) {
      pacienteLogado = paciente1;
    } else if (_cpf == paciente2.cpf && _password == paciente2.senha) {
      pacienteLogado = paciente2;
    }

    if (pacienteLogado != null) {
      // Se o login for bem-sucedido, navegue para a nova página e passe o objeto Paciente
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Menu(paciente: pacienteLogado!)),
      );
    } else {
      // Caso contrário, exiba um popup com a mensagem de erro
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Erro de Login'),
            content: Text('Credenciais inválidas. Por favor, tente novamente.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: loginFormKey,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  _cpf = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'CPF',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
