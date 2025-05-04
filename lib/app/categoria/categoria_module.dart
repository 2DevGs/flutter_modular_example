
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';
import 'package:flutter_modular_example/app/categoria/model/x.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';

class CategoriaModule extends Module {

  @override
  List<Bind<Object>> get binds => [
    // Bind((i) => CategoriaController(),),
    Bind.lazySingleton((i) => X(), export: true),
    Bind.lazySingleton((i) => PrecoModel(x: i()), export: true),
    Bind.lazySingleton(
      (i) => CategoriaController(
        precoModel: i(),
      ),
    ),
    // Bind.singleton((i) => CategoriaController(),),
    // Bind.factory((i) => CategoriaController(),),
    //  isLazy: true, isSingleton: false
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, 
        child: (context, args) => CategoriaPage(
          categoria: args.data,
        )),
    ModuleRoute('/produto', module: ProdutoModule())
  ];
}