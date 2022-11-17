import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main.dart';

class XemxephangScreen extends StatefulWidget {
  const XemxephangScreen({super.key});

  @override
  State<XemxephangScreen> createState() => _XemxephangScreenState();
}

class _XemxephangScreenState extends State<XemxephangScreen> {
    var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
     body: Container(
         margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            padding: EdgeInsets.fromLTRB(10,0, 10, 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Text('Giải đấu xếp hạng',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                  height: 50,
                  width: 50,
                  child: Image(image: AssetImage('assets/images/shield (4).png'))),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image(image: AssetImage('assets/images/shield (2).png'))),
                   SizedBox(
                  height: 50,
                  width: 50,
                  child: Image(image: AssetImage('assets/images/shield (4).png'))),
              ],),
               for(var i=1; i < 10; i++ )...{
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: orange ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                     Row(
                       children: [
                         SizedBox(
                          height: 30,
                          width: 30,
                          child: Image(image: AssetImage('assets/images/medal (1).png'))),
                  
                   Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child:SizedBox(
                            width: 50,
                            height: 50,
                            child: ClipOval(
                              child: Image(
                                image: AssetImage('assets/images/logo.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                   ),
                  Text('Nhựt Hòa',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                       ],
                     ),
                  Text('Điểm hạng',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                ],),)
               }
            ],),
          ),
        ),
     ),
  
    );
  }
}