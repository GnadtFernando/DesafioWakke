import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_wakke/shared/modules/help_module.dart';

import '../../pages/feed-page/feed_controller.dart';
import '../../pages/feed-page/feed_page.dart';

import 'feed_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => FeedController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const FeedPage()),
        //MODULES FILHOS
        ModuleRoute('/feed-page',
            module: FeedModule(), transition: TransitionType.fadeIn),
        ModuleRoute('/help-page',
            module: HelpModule(), transition: TransitionType.fadeIn),
      ];
}
