import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Quanlihoso/Thanhtuu.dart';
import 'package:flutter_application_1/Screen/Quanlihoso/Thongke.dart';
import 'package:flutter_application_1/main.dart';

class QuanlihosoScreen extends StatefulWidget {
  const QuanlihosoScreen({super.key});

  @override
  State<QuanlihosoScreen> createState() => _QuanlihosoScreenState();
}

class _QuanlihosoScreenState extends State<QuanlihosoScreen>  {
  

  var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Column(
              children: [
                Column(
                  
                  children: [
                       
                          Text(
                              'Quản lí hồ sơ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 16),
                            ),
                     Row(
                        
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      
                         Row(
                           children: [
                             Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: ClipOval(
                                child: Image(
                                    height: 50,
                                    width: 50,
                                    image: AssetImage('assets/images/logo.jpg')),
                              ),
                        ),
                        InkWell(
                              onTap: () {
                                //Navigator.pop(context);
                                // Navigator.popUntil(context, (route) => route.isFirst);
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => DangkyScreen()));
                                //Navigator.pop(context);
                              },
                              child: Text(
                                'Chỉnh sửa hồ sơ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                    // decoration: TextDecoration.underline
                                    ),
                              ),
                        ),
                           ],
                         ),
                          
                          IconButton(onPressed: () {}, icon: Icon(Icons.settings,size: 30,)),
                          
                        ],
                      ),
                    
                 
                   
                        // Container(
                         
                        //   padding: EdgeInsets.all(10),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //     Text('Thống kê',style: TextStyle(color: orange,fontSize: 20,fontWeight: FontWeight.bold),),
                        //     Container(
                        //       margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            
                        //       decoration: BoxDecoration(
                        //         border: Border.all(width: 1,color:orange),
                               
                        //     borderRadius: BorderRadius.circular(10)
                          
                        //       ),
                        //       child: Row(children: [
                        //         Column(children: [
                        //             ContainersText(content:'Tổng điểm KN' ),
                        //             ContainersText(content:'Trận đã chơi' ),
                        //         ],),
                        //         Column(children: [
                        //             ContainersText(content:'Chuỗi hoạt động' ),
                        //             ContainersText(content:'Tỉ lệ thắng' ),
                        //         ],)
                        //       ],),
                        //     )
          
                        //   ],),
                        // ),
                        SingleChildScrollView(child: Column(children: [

                        Thongke(),
                        Thanhtuu()
                        ],),)
                        
                    
                    //  Container(
                     
                    //   padding: EdgeInsets.all(10),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //     Text('Thành tựu',style: TextStyle(color: orange,fontSize: 20,fontWeight: FontWeight.bold),),
                    //     Container(
                    //       margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        
                    //       decoration: BoxDecoration(
                    //         border: Border.all(width: 1,color:orange),
                           
                    //     borderRadius: BorderRadius.circular(10)
                      
                    //       ),
                    //       child:
                         
                    //         Row(children: [
                    //             Column(
                    //               children: [
                                    
                    //                 Row(
                    //                 // mainAxisAlignment: MainAxisAlignment.start,
                    //                   children: [
                    //                     Image(
                    //                         height:80,
                    //                         width: 100,
                    //                         image: AssetImage('assets/images/rpg-game.png')),
                    //                         Column(
                    //                           crossAxisAlignment: CrossAxisAlignment.start,
                    //                           children: [
                    //                           Text('Người chiến thắng',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    //                           Text('Trở thành người chiến thắng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                    //                           Text('trong các trận đối kháng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                             

                    //                         ],)
                    //                   ],
                    //                 ),
                    //                  Row(
                    //                 // mainAxisAlignment: MainAxisAlignment.start,
                    //                   children: [
                    //                     Image(
                    //                         height:80,
                    //                         width: 100,
                    //                         image: AssetImage('assets/images/rpg-game.png')),
                    //                         Column(
                    //                           crossAxisAlignment: CrossAxisAlignment.start,
                    //                           children: [
                    //                           Text('Người chiến thắng',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    //                           Text('Trở thành người chiến thắng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                    //                           Text('trong các trận đối kháng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                             

                    //                         ],)
                    //                   ],
                    //                 ),
                    //                 Row(
                    //                 // mainAxisAlignment: MainAxisAlignment.start,
                    //                   children: [
                    //                     Image(
                    //                         height:80,
                    //                         width: 100,
                    //                         image: AssetImage('assets/images/rpg-game.png')),
                    //                         Column(
                    //                           crossAxisAlignment: CrossAxisAlignment.start,
                    //                           children: [
                    //                           Text('Người chiến thắng',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    //                           Text('Trở thành người chiến thắng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                    //                           Text('trong các trận đối kháng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                             

                    //                         ],)
                    //                   ],
                    //                 ),
                    //                  Row(
                    //                 // mainAxisAlignment: MainAxisAlignment.start,
                    //                   children: [
                    //                     Image(
                    //                         height:80,
                    //                         width: 100,
                    //                         image: AssetImage('assets/images/rpg-game.png')),
                    //                         Column(
                    //                           crossAxisAlignment: CrossAxisAlignment.start,
                    //                           children: [
                    //                           Text('Người chiến thắng',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    //                           Text('Trở thành người chiến thắng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                    //                           Text('trong các trận đối kháng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                             

                    //                         ],)
                    //                   ],
                    //                 ),
                    //               // OutlinedButton(onPressed: (){}, child: Text('Thành tựu khác'))                                  
                    //               ],
                    //             ),
                    //         ],)
                          
                    //     )
          
                    //   ],),
                    // )
                  
                    
              ],
            ),
            ]
          ),
          
        ),
         
       
      );
  }
}

class ContainersText extends StatelessWidget{
   const ContainersText ({super.key, required this.content});
    final content;

   Widget build(BuildContext context) {
    return Container(
      width:170 ,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(12, 10, 10, 10),
      child: Text(content,
    style: TextStyle(
     //color: Colors.pink,
      fontWeight:FontWeight.bold,
            fontSize: 16,        
      ),),
    decoration: BoxDecoration(
      
    
      border: Border.all(width: 1,
      color: Colors.grey.withOpacity(0.6)

      ),
       borderRadius: BorderRadius.circular(10),
    )
    ); 
  }
}
