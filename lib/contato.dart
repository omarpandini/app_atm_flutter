import 'package:app_atm/styles.dart';
import 'package:flutter/material.dart';

class TelaContato extends StatelessWidget {
  const TelaContato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ATM Consultoria - Contato'),
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
  var _imagem1 = AssetImage('images/detalhe_contato.png');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(image: _imagem1),
                Text(
                  'Contato',
                  style: Estilos.texto1,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text('Email: asdfsaf@gmail.com'),
            ),
            Text('Telefone: 47999955566'),
          ],
        ),
      ),
    );
  }
}
