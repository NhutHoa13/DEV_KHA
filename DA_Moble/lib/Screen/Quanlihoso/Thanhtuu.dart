import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Thanhtuu extends StatefulWidget {
  const Thanhtuu({super.key});

  @override
  State<Thanhtuu> createState() => _ThanhtuuState();
}

class _ThanhtuuState extends State<Thanhtuu> {
   var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    return Container( 
                     
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Thành tựu',style: TextStyle(color: orange,fontSize: 20,fontWeight: FontWeight.bold),),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        
                          decoration: BoxDecoration(
                            border: Border.all(width: 1,color:orange),
                           
                        borderRadius: BorderRadius.circular(10)
                      
                          ),
                          child:
                         
                            Row(children: [
                                Column(
                                  children: [
                                    
                                    Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image(
                                            height:80,
                                            width: 100,
                                            image: AssetImage('assets/images/rpg-game.png')),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Text('Người chiến thắng',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                              Text('Trở thành người chiến thắng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                              Text('trong các trận đối kháng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                             

                                            ],)
                                      ],
                                    ),
                                     Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image(
                                            height:80,
                                            width: 100,
                                            image: AssetImage('assets/images/rpg-game.png')),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Text('Người chiến thắng',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                              Text('Trở thành người chiến thắng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                              Text('trong các trận đối kháng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                             

                                            ],)
                                      ],
                                    ),
                                    Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image(
                                            height:80,
                                            width: 100,
                                            image: AssetImage('assets/images/rpg-game.png')),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Text('Người chiến thắng',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                              Text('Trở thành người chiến thắng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                              Text('trong các trận đối kháng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                             

                                            ],)
                                      ],
                                    ),
                                     Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image(
                                            height:80,
                                            width: 100,
                                            image: AssetImage('assets/images/rpg-game.png')),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Text('Người chiến thắng',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                              Text('Trở thành người chiến thắng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                              Text('trong các trận đối kháng',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                                             

                                            ],)
                                      ],
                                    ),
                                    
                                  // OutlinedButton(onPressed: (){}, child: Text('Thành tựu khác'))                                  
                                  ],
                                ),
                            ],)
                          
                        )
          
                      ],),
                    );
  }
}