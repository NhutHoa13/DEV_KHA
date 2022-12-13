import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Bando.dart';
import 'package:flutter_application_1/Screen/Doikhangthang.dart';
import 'package:flutter_application_1/Screen/XemXepHangMan.dart';
import 'package:flutter_application_1/Screen/quiz.dart';
import 'package:flutter_application_1/component/widget_item.dart';
import 'package:flutter_application_1/model/db_content.dart';

class TongketScreen extends StatefulWidget {
   int score =0;
   TongketScreen({super.key, required this.score});

  @override
  State<TongketScreen> createState() => _TongketScreenState();
}

class _TongketScreenState extends State<TongketScreen> {
   
  @override
  Widget build(BuildContext context) {
     var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
   
    return Scaffold(  
      body: SingleChildScrollView(child: Container(
          margin: EdgeInsets.fromLTRB(0, mlr + 10, 0, 0),
      child:  Column(children: [
       
      Row(
mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tổng kết',style: TextStyle(
            fontSize: 36,
            color: orange,
            fontWeight: FontWeight.bold
            
          ),),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: r / 2,
             height: r /2,
              image: AssetImage('assets/images/language.png'))
        ],),
      ),
      Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 50),
                      alignment: Alignment.center,
                      child: Container(
                               width: r/1.2,
                               height: r/2,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                 border: Border.all(color: orange,width: 2),
                                 borderRadius:BorderRadius.circular(5)
                           
                               ),
                               child: Text( "${widget.score}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26),),
                             ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Align(
                        child: Container(
                          
                                  width: 100,
                                  height: 30,
                              margin: EdgeInsets.all(10),
                             // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: orange,
                               // Set border width
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0)), // Set rounded corner radius
                               // Make rounded corner of border
                              ),
                              child: Text('Score',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                      ),
                    )
                  ],
                ),
              ),
    
       Padding(
         padding: const EdgeInsets.all(8.0),
         child:  InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => XemXhangMan(score: widget.score)));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: r-mlr,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: orange),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 Text(
                              'Bang xep hang',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                            )
                ],)
          ),
        )
       ),
                     
                      InkWell(
          onTap: () {
           // Navigator.popUntil(context, (route) => route.isCurrent);
            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => quiz(totalTime:0),
                  ));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: r-mlr,
            height: 50,
            decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(10), color: orange),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 Text(
                              'Chơi lại',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                            )
                ],)
          ),
        )
    ]),
    )
    ),
    
    );
  }
}