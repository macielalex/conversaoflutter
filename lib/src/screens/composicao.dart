

import 'package:br_hidro_flutter/src/widgets/button_double.dart';
import 'package:br_hidro_flutter/src/widgets/button_single.dart';
import 'package:br_hidro_flutter/src/widgets/display_result.dart';
import 'package:flutter/material.dart';

class CompositionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(


      color: Colors.white,
      child: Column(
        children: [
          DisplayResult("sm", "0"),
          DisplayResult("sm", "0"),
          Divider(),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      ButtonSingle("7", Theme.of(context).primaryColor, Colors.white),
                      ButtonSingle("8", Theme.of(context).primaryColor, Colors.white),
                      ButtonSingle("9", Theme.of(context).primaryColor, Colors.white),

                    ],
                  ),
                  Row(
                    children: [
                      ButtonSingle("4", Theme.of(context).primaryColor, Colors.white),
                      ButtonSingle("5", Theme.of(context).primaryColor, Colors.white),
                      ButtonSingle("6", Theme.of(context).primaryColor, Colors.white),

                    ],
                  ),
                  Row(
                    children: [
                      ButtonSingle("1", Theme.of(context).primaryColor, Colors.white),
                      ButtonSingle("2", Theme.of(context).primaryColor, Colors.white),
                      ButtonSingle("3", Theme.of(context).primaryColor, Colors.white),
                    ],
                  ),
                  Row(
                    children: [
                      ButtonSingle("", Theme.of(context).primaryColor, Colors.white),
                      ButtonSingle("0", Theme.of(context).primaryColor, Colors.white),
                      ButtonSingle(",", Theme.of(context).primaryColor, Colors.white),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  ButtonDouble("AC", Colors.white, Theme.of(context).primaryColor),
                  ButtonDouble("AC", Colors.white, Theme.of(context).primaryColor),
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
