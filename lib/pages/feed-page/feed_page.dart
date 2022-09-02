import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:teste_wakke/pages/feed-page/feed_controller.dart';
import 'package:teste_wakke/widgets/feed_image_widget.dart';

import '../../widgets/drawer.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  bool loadingCompleted = false;
  final FeedController controller = FeedController();
  @override
  void initState() {
    controller.loadAssets(context).whenComplete(() {
      setState(() {
        loadingCompleted = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => debugPrint("teste"),
                icon: Image.asset('assets/images/icon_header_search.png',
                    height: size.width * 0.042))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Image.asset(
            'assets/images/logo_wakke_roxo.png',
            width: size.width * 0.3,
          ),
          leading: Builder(builder: (context) {
            return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Image.asset(
                'assets/images/icon_header_menu.png',
                width: size.width * 0.3,
              ),
            );
          }),
        ),
        body: !loadingCompleted
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                shrinkWrap: true,
                itemCount: controller.feeds.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(size.width * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(size.width * 4),
                                  ),
                                  child: controller.feeds[index]
                                              ["usuario_autor_imagem_perfil"] ==
                                          null
                                      ? const CircleAvatar()
                                      : CachedNetworkImage(
                                          imageUrl: controller.feeds[index]
                                              ["usuario_autor_imagem_perfil"]),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.02),
                                child: Text(
                                  controller.feeds[index]
                                      ['usuario_autor_apelido'],
                                  style: TextStyle(fontSize: size.width * 0.04),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(size.width * 0.02),
                            child: FeedImage(
                                title: controller.feeds[index]['titulo'],
                                urlImage: controller.feeds[index]
                                    ['imagem_capa']),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset('assets/images/icon_coments.png'),
                              Text(controller.feeds[index]['comentarios_qtd']
                                  .toString()),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Image.asset('assets/images/icon_rating.png'),
                              Text(controller.feeds[index]['avaliacao_nota']
                                  .toString()),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.width * 0.02),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(controller.feeds[index]['descricao']
                                    .toString())),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
        floatingActionButton: Image.asset("assets/images/button_fun.png",
            height: 60, fit: BoxFit.fitHeight),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            onTap: (index) {
              debugPrint('teste');
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon_header_menu.png",
                      height: 30, color: Colors.grey, fit: BoxFit.fitHeight),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon_add.png",
                      height: 30, color: Colors.grey, fit: BoxFit.fitHeight),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon_account.png",
                      height: 30, color: Colors.grey, fit: BoxFit.fitHeight),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon_notificacoes.png",
                      height: 30, color: Colors.grey, fit: BoxFit.fitHeight),
                  label: ""),
            ],
          ),
        ));
  }
}
