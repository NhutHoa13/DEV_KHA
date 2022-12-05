import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_application_1/Screen/Timtran.dart';
import 'package:flutter_application_1/Screen/Xemlichsudau.dart';
import 'package:flutter_application_1/Screen/Xemxephang.dart';
import 'package:flutter_application_1/Screen/Xephangdoikhang.dart';
import 'package:flutter_application_1/Screen/xemhoso.dart';

class DoikhangScreen extends StatefulWidget {
  const DoikhangScreen({super.key});

  @override
  State<DoikhangScreen> createState() => _DoikhangScreenState();
}

class _DoikhangScreenState extends State<DoikhangScreen> {
  var style1 = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black,fontSize: 18);
  var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.fromLTRB(0, mlr + 10, 0, 0),
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup1.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
        child: Column(
          children: [
            Center(
                child: Text(
              'Đối kháng',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16),
            )),
            Row(
              children: [
               CircleAvatar(
                        radius: 43,
                          backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                   
                    children: [Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text('Nhựt Hòa',style: style1,),
                    ), Text('Level: 10',style: style1,)],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
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
                    constraints: BoxConstraints(minWidth: 300, minHeight: 50),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)))),
                      onPressed: () {
                       
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TimtranScreen()));
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 250, minHeight: 50),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)))),
                      onPressed: () {
                        //    Navigator.of(context).popUntil((route) => route.isFirst);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Xephangdoikhang()));
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
                    constraints: BoxConstraints(minWidth: 200, minHeight: 40),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const XemlichdauScreen()));
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