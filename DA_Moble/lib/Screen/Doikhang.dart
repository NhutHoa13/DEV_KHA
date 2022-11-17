import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';

class DoikhangScreen extends StatefulWidget {
  const DoikhangScreen({super.key});

  @override
  State<DoikhangScreen> createState() => _DoikhangScreenState();
}

class _DoikhangScreenState extends State<DoikhangScreen> {
   var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
     var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
        body: Container(
            margin: EdgeInsets.fromLTRB(0, mlr+10, 0, 0),
            padding: EdgeInsets.fromLTRB(10,0, 10, 10),
          child: Column(
            children: [
              Center(child:Text(
                          'Đối kháng',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16),
                        )),
              Row(children: [
                  ClipOval(
                            child: Image(
                              height: 50,
                              width: 50,
                                image: AssetImage('assets/images/logo.jpg')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Text('Nhựt Hòa'),
                              Text('Level: 10')
                            ],),
                          )
              ],),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(
                  height: 150,
                  width: 150,
                  image: AssetImage('assets/images/swords.png')),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(minWidth: 200, minHeight: 40),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          side: 
                             MaterialStateProperty.all(
                              BorderSide(color: Colors.black)
                             ),
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(orange),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  
                                    borderRadius:
                                        BorderRadius.circular(15.0)))),
                        onPressed: () {
                        //    Navigator.of(context).popUntil((route) => route.isFirst);
                        // Navigator.push(context, MaterialPageRoute(builder:(context) => const screen_home()));
                        },
                        // child: const Padding(
                        //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Chơi ngay",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(minWidth: 200, minHeight: 40),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          side: 
                             MaterialStateProperty.all(
                              BorderSide(color: Colors.black)
                             ),
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(orange),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  
                                    borderRadius:
                                        BorderRadius.circular(15.0)))),
                        onPressed: () {
                        //    Navigator.of(context).popUntil((route) => route.isFirst);
                        // Navigator.push(context, MaterialPageRoute(builder:(context) => const screen_home()));
                        },
                        // child: const Padding(
                        //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Bảng xếp hạng",
                          style: TextStyle(
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(minWidth: 200, minHeight: 40),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          side: 
                             MaterialStateProperty.all(
                              BorderSide(color: Colors.black)
                             ),
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(orange),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  
                                    borderRadius:
                                        BorderRadius.circular(15.0)))),
                        onPressed: () {
                        //    Navigator.of(context).popUntil((route) => route.isFirst);
                        // Navigator.push(context, MaterialPageRoute(builder:(context) => const screen_home()));
                        },
                        // child: const Padding(
                        //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Lịch sử đấu",
                          style: TextStyle(
                            fontSize: 20,
                           
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
              
          ),
        ),
    );
  }
}