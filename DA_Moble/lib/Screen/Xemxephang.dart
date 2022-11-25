import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component/widget_item.dart';
import 'package:flutter_application_1/model/db_content.dart';

class phanhang extends StatefulWidget {
  const phanhang({super.key});

  @override
  State<phanhang> createState() => _phanhangState();
}

class _phanhangState extends State<phanhang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
           margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        padding: EdgeInsets.all(5),
      
        
        child: Column(
          children: [
             Text('Giải đấu xếp hạng',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 40,
                    width: 40,
                    image: AssetImage('assets/images/shield (8).png')),
                  SizedBox(
                  height: 60,
                  width: 60,
                  child: Image(image: AssetImage('assets/images/shield (7).png'))),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image(image: AssetImage('assets/images/shield (2).png'))),
                   SizedBox(
                  height: 60,
                  width: 60,
                  child: Image(image: AssetImage('assets/images/shield (7).png'))),
                   Image(
                    height: 40,
                    width: 40,
                    image: AssetImage('assets/images/shield (8).png')),
              ],),
           Container(
             decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey,width: 2)
                            )
                          ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 TextButton(
                                  child: const Text('TOP RANK',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                                  onPressed: () {}),
                                   TextButton(
                              child: const Text('TOP SCORES',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                              onPressed: () {}),
               ],
             ),
           ),
                            
             
              Column(children: [
                Container(               
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: Column(children: [                    
                      Expanded(
                        child: ListView.builder(
                          itemCount: db_context.items.length,
                          itemBuilder: (context, index) {
                            return Info_rank_frame(
                              info: db_context.items[index],
                              
                            );
                          },
                        ),
                      )
                    ]))
              ])
            ]),
      )
    );
  }
}

// class XemxephangScreen extends StatefulWidget {
//   const XemxephangScreen({super.key});

//   @override
//   State<XemxephangScreen> createState() => _XemxephangScreenState();
// }

// class _XemxephangScreenState extends State<XemxephangScreen> {
//     var orange = Color.fromARGB(255, 255, 172, 47);
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//      body: Container(
//          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
//             padding: EdgeInsets.fromLTRB(10,0, 10, 10),
//         child: SingleChildScrollView(
//           child: Center(
//             child: Column(children: [
//               Text('Giải đấu xếp hạng',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: Image(image: AssetImage('assets/images/shield (4).png'))),
//                 SizedBox(
//                   height: 80,
//                   width: 80,
//                   child: Image(image: AssetImage('assets/images/shield (2).png'))),
//                    SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: Image(image: AssetImage('assets/images/shield (4).png'))),
//               ],),
//                 Container(
//         child: ListView.builder(
//           itemCount: DB_Context.items.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ItemFrame(
//               item: DB_Context.items[index],
//             );
//           },
//         ),
//       )
//             ],),
//           ),
//         ),
//      ),
  
//     );
//   }
// }