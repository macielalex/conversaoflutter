import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayResult extends StatelessWidget {

  final String symbol;
  final String displayInfo;

  DisplayResult(this.symbol,this.displayInfo );



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
        return Container(
          height: MediaQuery.of(context).size.height / 6,
          color: Colors.white,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(symbol != null ? symbol : "0"),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(displayInfo != null ? displayInfo : "0",
                  style: TextStyle(
                      fontSize: constrains.maxWidth > 400 ? 60 : 45,
                      color: Color.fromRGBO(66, 66, 66, 1)
                  ),),
              )
            ],
          ),

        );
    });
  }
}
