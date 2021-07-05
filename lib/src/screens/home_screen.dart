import 'package:br_hidro_flutter/src/screens/busca_produto.dart';
import 'package:br_hidro_flutter/src/screens/composicao.dart';
import 'package:br_hidro_flutter/src/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {

    final scrollController = ScrollController(initialScrollOffset: 0);
    return PageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      //physics: NeverScrollableScrollPhysics(),
      children: <Widget> [
          Scaffold(
            appBar: AppBar(
              title: Text("Busca Produto"),
              centerTitle: true,
            ),
            body: CompositionTab(),
            drawer: CustomDrawer(pageController),
          ),
        Scaffold(
          appBar: AppBar(
            title: Text("Pressão"),
            centerTitle: true,
          ),
          body: BuscaProduto(),
          drawer: CustomDrawer(pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Comprimento"),
            centerTitle: true,
          ),
          body: Container(color: Colors.orange,),
          drawer: CustomDrawer(pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Lojas"),
            centerTitle: true,
          ),
          body: Container(color: Colors.greenAccent,),
          drawer: CustomDrawer(pageController),
        ),


      ],
    );
  }
}
