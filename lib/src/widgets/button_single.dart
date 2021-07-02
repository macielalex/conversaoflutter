import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSingle extends StatelessWidget {

  final String info;
  final Color color;
  final Color backGroundColor;

  ButtonSingle(this.info,this.color, this.backGroundColor );



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
      return Container(
        width:  MediaQuery.of(context).size.width/ 4,
        height: MediaQuery.of(context).size.width / 4,
        color: backGroundColor ?? Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(info != null ? info : "0",
              style: TextStyle(
                  fontSize: constrains.maxWidth > 400 ? 50 : 35,

                  color: color ?? Color.fromRGBO(66, 66, 66, 1)
              ),),
          ],
        ),

      );
    });
  }
}
