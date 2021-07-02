import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDouble extends StatelessWidget {

  final String info;
  final Color color;
  final Color backGroundColor;

  ButtonDouble(this.info,this.color, this.backGroundColor );



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Theme.of(context).primaryColor
        ),


        width:  MediaQuery.of(context).size.width/ 5,
        height: (MediaQuery.of(context).size.width / 4) * 2,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(info != null ? info : "0",
              style: TextStyle(
                  fontSize: constrains.maxWidth > 400 ? 40 : 30,

                  color: color ?? Color.fromRGBO(66, 66, 66, 1)
              ),),
          ],
        ),

      );
    });
  }
}
