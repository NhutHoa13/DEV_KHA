import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Quanlihoso.dart';

class Thongke extends StatefulWidget {
  const Thongke({super.key});

  @override
  State<Thongke> createState() => _ThongkeState();
}

class _ThongkeState extends State<Thongke> {
    var orange = Color.fromARGB(255, 255, 172, 47);
  @override
  Widget build(BuildContext context) {
    return Container(   
                         
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('Thống kê',style: TextStyle(color: orange,fontSize: 20,fontWeight: FontWeight.bold),),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            
                              decoration: BoxDecoration(
                                border: Border.all(width: 1,color:orange),
                               
                            borderRadius: BorderRadius.circular(10)
                          
                              ),
                              child: Row(children: [
                                Column(children: [
                                    ContainersText(content:'Tổng điểm KN' ),
                                    ContainersText(content:'Trận đã chơi' ),
                                ],),
                                Column(children: [
                                    ContainersText(content:'Chuỗi hoạt động' ),
                                    ContainersText(content:'Tỉ lệ thắng' ),
                                ],)
                              ],),
                            )
          
                          ],),
                        
    );
  }
}