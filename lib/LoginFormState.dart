import 'package:flutter/material.dart';
import './Paciente.dart';
import './mock_data.dart';
import 'Menu.dart';


class LoginFormState extends State {
  final Paciente paciente1 = MockPacienteData.paciente1;
  final Paciente paciente2 = MockPacienteData.paciente2;

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
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Menu(paciente: pacienteLogado!)),
      );
    } else {
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
                labelStyle: TextStyle(
                  color: Color.fromARGB(
                      255, 100, 100, 100),
                  fontSize: 12,
                  fontWeight:
                      FontWeight.bold,
                ),
                hintText: 'Digite seu CPF',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 77, 75, 75), width: 1.0),
                ),
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

                labelStyle: TextStyle(
                  color: Color.fromARGB(
                      255, 100, 100, 100),
                  fontSize: 12,
                  fontWeight:
                      FontWeight.bold,
                ),
                hintText: 'Digite seu CPF',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 77, 75, 75), width: 1.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: MediaQuery.of(context).size.width *
                  0.8,
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10),
                  ),
                ),
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 68, 95),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
