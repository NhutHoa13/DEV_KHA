import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimtranScreen extends StatefulWidget {
  const TimtranScreen({super.key});

  @override
  State<TimtranScreen> createState() => _TimtranScreenState();
}

class _TimtranScreenState extends State<TimtranScreen> {
  var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Text(
            'SẴN SÀNG...',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            '5',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                 
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: CircleAvatar(
                          radius: 42,
                          backgroundColor: Color(0xffFDCF09),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                          )),
                    ),
                   
                        Text(
                      'User name',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                     
                      children: [
                      Image(
                        height: 20,
                        image: AssetImage('assets/images/trophy (5).png')),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                          child: Text('1000',style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                        )
                    ],)
                  ],
                ),
                Center(
                    child: Text(
                  'SV',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
                Column(
                  children: [
                    CircleAvatar(
                        radius: 42,
                        backgroundColor: Color(0xffFDCF09),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        )),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
