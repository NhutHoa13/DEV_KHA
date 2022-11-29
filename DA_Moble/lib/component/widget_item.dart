import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/item.dart';



class Info_rank_frame extends StatefulWidget {
  Info_rank_frame({super.key, required this.info});
  final Info info;
  @override
  State<Info_rank_frame> createState() => _InfoState();
}

class _InfoState extends State<Info_rank_frame> {
  var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
      var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
   return Container(
                       padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    
                        child: ConstrainedBox(
                          constraints: BoxConstraints(minHeight: 70, minWidth: r),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  primary: Colors.orange, 
                                side: BorderSide(width: 1, color: orange),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                // Navigator.of(context).popUntil((route) => route.isFirst);
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => const QuanlitaikhoanScreen()));
                              },
                              child:
                               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                                 
                               
                    
                       Row(
                         children: [
                          
                            Text(widget.info.path_rank,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    
                     Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child:SizedBox(
                              width: 50,
                              height: 50,
                              child: ClipOval(
                                child: Image(
                                  image: AssetImage(widget.info.avatar),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                     ),
                    Text(widget.info.name,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                         ],
                       ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          height: 30,
                          width: 30,
                          image: AssetImage('assets/images/trophy (4).png'),),
                        Text(widget.info.current_ranking,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                      ],
                    ),
                                 ],),
                               ),
                        ),
              
              );
    // return Container(
    //           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
    //             padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    //             decoration: BoxDecoration(
    //               border: Border.all(width: 1,color: orange ),
    //               borderRadius: BorderRadius.circular(10)
    //             ),
    //             child:
    //              OutlinedButton(
    //               onPressed: (){},
    //               style: OutlinedButton.styleFrom(
                    
    //               ),
    //                child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
                      
                                 
                               
                    
    //                    Row(
    //                      children: [
    //                        SizedBox(
    //                         height: 30,
    //                         width: 30,
    //                         child: Image(image: AssetImage(widget.info.path_rank))),
                    
    //                  Padding(
    //                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    //                   child:SizedBox(
    //                           width: 50,
    //                           height: 50,
    //                           child: ClipOval(
    //                             child: Image(
    //                               image: AssetImage(widget.info.avatar),
    //                               fit: BoxFit.cover,
    //                             ),
    //                           ),
    //                         ),
    //                  ),
    //                 Text(widget.info.name,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
    //                      ],
    //                    ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Image(
    //                       height: 30,
    //                       width: 30,
    //                       image: AssetImage('assets/images/trophy (4).png'),),
    //                     Text(widget.info.current_ranking,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
    //                   ],
    //                 ),
    //                              ],),
    //              )
               
   
    // );
  }
}

// class infoFrame extends StatefulWidget {
//   const infoFrame({super.key,required this.info});
//     final info info;

//   @override
//   State<infoFrame> createState() => _infoFrameState();
// }

// class _infoFrameState extends State<infoFrame> {
//     var orange = Color.fromARGB(255, 255, 172, 47);
//   @override
//   Widget build(BuildContext context) {
    
//     return Container(
//                 padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 1,color: orange ),
//                   borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
                  
//                      Row(
//                        children: [
//                          SizedBox(
//                           height: 30,
//                           width: 30,
//                           child: Image(image: AssetImage(widget.info.top))),
                  
//                    Padding(
//                     padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                     child:SizedBox(
//                             width: 50,
//                             height: 50,
//                             child: ClipOval(
//                               child: Image(
//                                 image: AssetImage(widget.info.image),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                    ),
//                   Text(widget.info.name,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
//                        ],
//                      ),
//                   Text(widget.info.score,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
//                 ],)
               
   
//     );
//   }
// }