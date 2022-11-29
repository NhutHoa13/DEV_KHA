import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component/widget_item.dart';
import 'package:flutter_application_1/model/db_content.dart';

class TongketScreen extends StatefulWidget {
  const TongketScreen({super.key});

  @override
  State<TongketScreen> createState() => _TongketScreenState();
}

class _TongketScreenState extends State<TongketScreen> {
   var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
     var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
   
    return Scaffold(  
      body: SingleChildScrollView(child: Container(
          margin: EdgeInsets.fromLTRB(0, mlr + 10, 0, 0),
      child:  Column(children: [
        Row(children: [  InkWell(
                              onTap: () {
                                // Navigator.of(context).popUntil((route) => route.isFirst);
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             TrangchuSrceen()));
                                // Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black.withOpacity(0.6),
                                size: 30,
                              ),
                            ),],),
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
                               child: Text('100',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26),),
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
                              child: Text("Scores",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                      ),
                    )
                  ],
                ),
              ),
    
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: ConstrainedBox(
                          constraints: BoxConstraints(minHeight: 50, minWidth: r/1.2),
                          child: TextButton(
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(orange),
                                  shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: orange)))),
                              onPressed: () {
                                // Navigator.of(context).popUntil((route) => route.isFirst);
                                // Navigator.push(context, MaterialPageRoute(builder:(context) => const DangkyScreen()));
                              },
                              child: Text(
                                'Bảng xếp hạng màn',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              )),
                        ),
       ),
                      ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 50, minWidth: r/1.2),
                        child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(orange),
                                shape:
                                    MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: orange)))),
                            onPressed: () {
                              // Navigator.of(context).popUntil((route) => route.isFirst);
                              // Navigator.push(context, MaterialPageRoute(builder:(context) => const DangkyScreen()));
                            },
                            child: Text(
                              'Chơi lại',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            )),
                      ),
    ]),
    )
    ),
    
    );
  }
}