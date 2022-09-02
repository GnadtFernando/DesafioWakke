import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_wakke/Pages/help-page/help_controller.dart';
import 'package:teste_wakke/Pages/help-page/help_page.dart';

class HelpModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HelpController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (_, args) => const HelpPage(),
            transition: TransitionType.fadeIn),
      ];
}
