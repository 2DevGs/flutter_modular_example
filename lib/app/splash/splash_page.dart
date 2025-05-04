import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Splash'),),
           body: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, '/categoria');
                    // Argumentos: Recupera pelo Modular.args.data
                    Modular.to.pushNamed('/categoria', arguments: 'Categoria Selecionada @@@@@');
                  }, 
                  child: Text('Categoria Module'),
                ),
                TextButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, '/categoria');
                    // Argumentos: Recupera pelo Modular.args.data
                    Modular.to.pushNamed('/categoria/produto/ProdutoY/xyz',);
                  }, 
                  child: Text('Produto dentro de Categoria Module'),
                ),
                TextButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, '/categoria');
                    // Argumentos: Recupera pelo Modular.args.data
                    Modular.to.pushNamed('/produto/Produto_X/xyz');
                  }, 
                  child: Text('Produto Module'),
                ),
                TextButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, '/categoria');
                    // NamedParameters: Recupera pelo Modular.args.params
                    Modular.to.pushNamed('/produto/xyz?nome=Produto_Z');
                  }, 
                  child: Text('Produto Query Param Module'),
                ),
              ],
             ),
           ),
       );
  }
}