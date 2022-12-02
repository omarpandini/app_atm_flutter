import 'package:app_atm/cliente.dart';
import 'package:app_atm/contato.dart';
import 'package:app_atm/empresa.dart';
import 'package:app_atm/servico.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ATM Consultoria'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _imgLogo = AssetImage('images/logo.png');
  var _imgMenuEmpresa = AssetImage('images/menu_empresa.png');
  var _imgMenuServicos = AssetImage('images/menu_servico.png');
  var _imgMenuClientes = AssetImage('images/menu_cliente.png');
  var _imgMenuContato = AssetImage('images/menu_contato.png');

  void abrirJanela(String opcao) {
    switch (opcao) {
      case 'EMPRESA':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaEmpresa(),
            ));
        break;
      case 'SERVICOS':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaServico(),
            ));
        break;
      case 'CLIENTES':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaCliente(),
            ));
        break;
      case 'CONTATO':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaContato(),
            ));
        break;
      default:
        null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: _imgLogo),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          abrirJanela('EMPRESA');
                        },
                        child: Image(image: _imgMenuEmpresa),
                      ),
                    ),
                    GestureDetector(
                      child: Image(image: _imgMenuServicos),
                      onTap: () {
                        abrirJanela('SERVICOS');
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        child: Image(image: _imgMenuClientes),
                        onTap: () {
                          abrirJanela('CLIENTES');
                        },
                      ),
                    ),
                    GestureDetector(
                      child: Image(image: _imgMenuContato),
                      onTap: () {
                        abrirJanela('CONTATO');
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
