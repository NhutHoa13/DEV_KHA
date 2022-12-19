import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

import 'package:flutter_application_1/Screen/Doikhangthang.dart';
import 'package:flutter_application_1/Screen/choicanhan/quiz.dart';
import 'package:flutter_application_1/contraints/button.dart';

class BandoScreen extends StatefulWidget {
  const BandoScreen({super.key});

  @override
  State<BandoScreen> createState() => _BandoScreenState();
}

class _BandoScreenState extends State<BandoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
       // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
           height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup5.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        child:
            Column(
              children: [
                  Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: MediaQuery.of(context).size.width,
                      height:80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 241, 198),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                            children: [
                               Row(
                                 children: [
                                
                                      CircleAvatar(
                        radius: 45,
                          backgroundColor: Colors.white,
                        child:    Padding(
                                     padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),child:CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        )),
                                   ),
                                   Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Text('EXP: 5548',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                          ),
                                      
                                      Text('Cấp độ: 1',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),)
                                    ],
                                   ),
                                 ],
                               ),
                               Row(
                                children: [
                                    Image(
                                      height: 30,
                                      width: 30,
                                      image: AssetImage('assets/images/diamond.png')),
                                      SizedBox(width: 10,),
                                    Text('35',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                                ],
                               )
                            ],
                          ),
                        ),
                    ),
                Container(
                 height: MediaQuery.of(context).size.height * 0.75,
                  child: SingleChildScrollView(
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             button(context, ' 1'),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             button(context, ' 2'),
                             button(context, ' 3'),
                           ],
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             button(context, ' 4'),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             button(context, ' 5'),
                             button(context, ' 6'),
                           ],
                         ),Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             button(context, ' 7'),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             button(context, ' 8'),
                             button(context, ' 9'),
                           ],
                         ),Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             button(context, ' 10'),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             button(context, ' 11'),
                             button(context, ' 12'),
                           ],
                         ),Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             button(context, ' 13'),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             button(context, ' 14'),
                             button(context, ' 15'),
                           ],
                         ),
                         
                        ],
                      ),
                      
                  
                    
                  ),
                ),
              ],
            ),
       
      ),
    );
  }
 
}

Container button(BuildContext context, String text,){
  return Container(
    
        height: 80,
        width: 80,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  decoration: BoxDecoration(

                                image: DecorationImage(
                                  
                                  image:  AssetImage('assets/images/button.png'),
                                  
                                ),
                              ),
                  child: TextButton(
                     
                    onPressed: ()  {
          showModalBottomSheet<void>(
            context: context,
            builder: (context) {
              return Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 450,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                   // mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                     button(context, ' 1'),
                     SizedBox(height: 10,),
                     Text('Chào hỏi',style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text('Score: 516',style: TextStyle(color: Colors.black,fontSize: 36,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text('Số câu hỏi: ',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      text1(context, Colors.green,'Dễ', (){}),
                      text1(context, Colors.yellow,'Vừa', (){}),
                      text1(context,Colors.red, 'Khó', (){}),
                    ],
                  ),
                    button_orange(context, 'Bắt đầu', 50,(){
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => quiz(totalTime: 15),
                        ));
                    }),
                    button_orange(context, 'Xếp hạng ',100, (){}),
                    ],
                  ),
                ),
              );
            },
          );
        }, child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text('Màn${text}',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.black),),
                    )),
  );
}

Container text1(BuildContext context,Color color, String text, Function onTap){
  return Container(
     
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: color,
                      width: 2
                    )
                  ),child: TextButton(
                    onPressed: (() {
                      onTap();
                    }),
                    child: Center(child: Text(text,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                  )
  );
}

