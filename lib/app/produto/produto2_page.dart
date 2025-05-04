import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Produto2Page extends StatelessWidget {

  final String? nome;

  Produto2Page({Key? key, this.nome,}) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Produto Page'),),
           body: Column(
             children: [
              //  Text(Modular.args?.params['nome'] ?? 'Nome não enviado'),
               Text(nome ?? 'Nome não enviado'),
             ],
           ),
       );
  }
}
