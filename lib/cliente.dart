import 'package:app_atm/styles.dart';
import 'package:flutter/material.dart';

class TelaCliente extends StatelessWidget {
  const TelaCliente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ATM Consultoria - Clientes'),
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
  var _imgDetalheCliente = AssetImage('images/detalhe_cliente.png');
  var _imgCliente1 = AssetImage('images/cliente1.png');
  var _imgCliente2 = AssetImage('images/cliente2.png');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Image(image: _imgDetalheCliente),
                  Text(
                    'Clientes',
                    style: Estilos.texto1,
                  )
                ],
              ),
            ),
            Image(image: _imgCliente1),
            Text('Empresa de Software'),
            Image(image: _imgCliente2),
            Text('Empresa de Auditoria'),
          ],
        ),
      ),
    );
  }
}
