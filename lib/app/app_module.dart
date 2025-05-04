
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';
import 'package:flutter_modular_example/app/splash/splash_page.dart';

class AppModule extends Module {

//Dependencias
  @override
  List<Bind<Object>> get binds => [];
  
  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context, args) => SplashPage()),
    ModuleRoute('/categoria', module: CategoriaModule()),
    ModuleRoute('/produto', module: ProdutoModule()),
  ];
}

// - Hierarquia
  // Produto
    // Estoque
      // Fornecedor
    // x
    // y 

    
    // - Hierarquia
  // app
    // m1
      // page1
      // m2
        // page2