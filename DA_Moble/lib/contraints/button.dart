
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contraints/color.dart';


InkWell button_orange(BuildContext context,String text,int  rong  ,Function onTap){
  return InkWell(
          onTap: () {
            onTap();
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            width: MediaQuery.of(context).size.width - rong,
            height: 50,
            decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(10), color: orange),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 Text(
                              text,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                            )
                ],)
          ),
        );
}

