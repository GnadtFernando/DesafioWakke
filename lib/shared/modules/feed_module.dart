import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_wakke/pages/feed-page/feed_controller.dart';
import 'package:teste_wakke/pages/feed-page/feed_page.dart';

class FeedModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => FeedController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (_, args) => const FeedPage(),
            transition: TransitionType.fadeIn),
      ];
}
