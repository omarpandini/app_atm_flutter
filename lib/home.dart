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

  void abrirEmpresa(String opcao) {
    print('opção ' + opcao);
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
                          abrirEmpresa('Menu empresa');
                        },
                        child: Image(image: _imgMenuEmpresa),
                      ),
                    ),
                    GestureDetector(
                      child: Image(image: _imgMenuServicos),
                      onTap: () {
                        abrirEmpresa('Menu serviços');
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
                          abrirEmpresa('Menu clientes');
                        },
                      ),
                    ),
                    GestureDetector(
                      child: Image(image: _imgMenuContato),
                      onTap: () {
                        abrirEmpresa('Menu contato');
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
