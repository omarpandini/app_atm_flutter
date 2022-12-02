import 'package:app_atm/styles.dart';
import 'package:flutter/material.dart';

class TelaEmpresa extends StatelessWidget {
  const TelaEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ATM Consultoria - Empresa'),
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
  var _imagem1 = AssetImage('images/detalhe_empresa.png');

  String _texto1 = '';

  void montaTexto() {
    _texto1 =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet massa quam, nec volutpat est imperdiet pulvinar. Proin tristique, sapien sit amet feugiat viverra, lorem mi laoreet nisl, sit amet blandit tortor dui vitae metus. Nam dignissim pharetra nisl, eget posuere nisl egestas non. Aenean quis lacus lacinia, porta lectus eleifend, placerat nunc. Vivamus a ligula tortor. Phasellus rutrum mollis lectus nec vulputate. Donec vitae orci a ex hendrerit finibus. Proin ultrices aliquet arcu eu ornare. Donec facilisis non sapien quis blandit. Cras molestie sed lectus quis blandit. Fusce blandit lobortis enim, rhoncus sodales enim. Cras ultrices molestie nunc, eget vehicula metus sodales quis.';
    _texto1 +=
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet massa quam, nec volutpat est imperdiet pulvinar. Proin tristique, sapien sit amet feugiat viverra, lorem mi laoreet nisl, sit amet blandit tortor dui vitae metus. Nam dignissim pharetra nisl, eget posuere nisl egestas non. Aenean quis lacus lacinia, porta lectus eleifend, placerat nunc. Vivamus a ligula tortor. Phasellus rutrum mollis lectus nec vulputate. Donec vitae orci a ex hendrerit finibus. Proin ultrices aliquet arcu eu ornare. Donec facilisis non sapien quis blandit. Cras molestie sed lectus quis blandit. Fusce blandit lobortis enim, rhoncus sodales enim. Cras ultrices molestie nunc, eget vehicula metus sodales quis.';
    _texto1 +=
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet massa quam, nec volutpat est imperdiet pulvinar. Proin tristique, sapien sit amet feugiat viverra, lorem mi laoreet nisl, sit amet blandit tortor dui vitae metus. Nam dignissim pharetra nisl, eget posuere nisl egestas non. Aenean quis lacus lacinia, porta lectus eleifend, placerat nunc. Vivamus a ligula tortor. Phasellus rutrum mollis lectus nec vulputate. Donec vitae orci a ex hendrerit finibus. Proin ultrices aliquet arcu eu ornare. Donec facilisis non sapien quis blandit. Cras molestie sed lectus quis blandit. Fusce blandit lobortis enim, rhoncus sodales enim. Cras ultrices molestie nunc, eget vehicula metus sodales quis.';
    _texto1 +=
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet massa quam, nec volutpat est imperdiet pulvinar. Proin tristique, sapien sit amet feugiat viverra, lorem mi laoreet nisl, sit amet blandit tortor dui vitae metus. Nam dignissim pharetra nisl, eget posuere nisl egestas non. Aenean quis lacus lacinia, porta lectus eleifend, placerat nunc. Vivamus a ligula tortor. Phasellus rutrum mollis lectus nec vulputate. Donec vitae orci a ex hendrerit finibus. Proin ultrices aliquet arcu eu ornare. Donec facilisis non sapien quis blandit. Cras molestie sed lectus quis blandit. Fusce blandit lobortis enim, rhoncus sodales enim. Cras ultrices molestie nunc, eget vehicula metus sodales quis.';
    _texto1 +=
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet massa quam, nec volutpat est imperdiet pulvinar. Proin tristique, sapien sit amet feugiat viverra, lorem mi laoreet nisl, sit amet blandit tortor dui vitae metus. Nam dignissim pharetra nisl, eget posuere nisl egestas non. Aenean quis lacus lacinia, porta lectus eleifend, placerat nunc. Vivamus a ligula tortor. Phasellus rutrum mollis lectus nec vulputate. Donec vitae orci a ex hendrerit finibus. Proin ultrices aliquet arcu eu ornare. Donec facilisis non sapien quis blandit. Cras molestie sed lectus quis blandit. Fusce blandit lobortis enim, rhoncus sodales enim. Cras ultrices molestie nunc, eget vehicula metus sodales quis.';
    _texto1 +=
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet massa quam, nec volutpat est imperdiet pulvinar. Proin tristique, sapien sit amet feugiat viverra, lorem mi laoreet nisl, sit amet blandit tortor dui vitae metus. Nam dignissim pharetra nisl, eget posuere nisl egestas non. Aenean quis lacus lacinia, porta lectus eleifend, placerat nunc. Vivamus a ligula tortor. Phasellus rutrum mollis lectus nec vulputate. Donec vitae orci a ex hendrerit finibus. Proin ultrices aliquet arcu eu ornare. Donec facilisis non sapien quis blandit. Cras molestie sed lectus quis blandit. Fusce blandit lobortis enim, rhoncus sodales enim. Cras ultrices molestie nunc, eget vehicula metus sodales quis.';
    _texto1 +=
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet massa quam, nec volutpat est imperdiet pulvinar. Proin tristique, sapien sit amet feugiat viverra, lorem mi laoreet nisl, sit amet blandit tortor dui vitae metus. Nam dignissim pharetra nisl, eget posuere nisl egestas non. Aenean quis lacus lacinia, porta lectus eleifend, placerat nunc. Vivamus a ligula tortor. Phasellus rutrum mollis lectus nec vulputate. Donec vitae orci a ex hendrerit finibus. Proin ultrices aliquet arcu eu ornare. Donec facilisis non sapien quis blandit. Cras molestie sed lectus quis blandit. Fusce blandit lobortis enim, rhoncus sodales enim. Cras ultrices molestie nunc, eget vehicula metus sodales quis.';
  }

  @override
  Widget build(BuildContext context) {
    montaTexto();

    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    Image(image: _imagem1),
                    Text(
                      'Sobre a Empresa',
                      style: Estilos.texto1,
                    )
                  ],
                ),
              ),
              Text(
                _texto1,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
