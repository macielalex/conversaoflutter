import 'package:br_hidro_flutter/src/tiles/drawer_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white, Colors.white,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        );

    return Drawer(
      child: Stack(
        children: [
          _buildDrawerBack(),
          ListView(


            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 0.0,
                      child: Text(
                        "BR\nHidráulica",
                        style: TextStyle(
                            fontSize: 34.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        left: 0,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olá',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),

                            ),
                            GestureDetector(
                              child: Text("Entre ou cadastre-se >",
                              style: TextStyle(color: Theme.of(context).primaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                              ),
                              onTap: (){}
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Divider(),
              DrawerTile( Icons.search, "Buscar Produto", pageController, 0),
              DrawerTile( Icons.auto_awesome_mosaic, "Pressão", pageController,1),
              DrawerTile( Icons.architecture, "Comprimento", pageController,2),
              DrawerTile( Icons.location_on, "Lojas", pageController,3),

            ],
          )
        ],
      ),
    );
  }
}
