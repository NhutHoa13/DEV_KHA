import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CaidatScreen extends StatefulWidget {
  const CaidatScreen({super.key});

  @override
  State<CaidatScreen> createState() => _CaidatScreenState();
}

class _CaidatScreenState extends State<CaidatScreen> {
   bool light1 = true;
   bool light2 = true;
   bool light3= true;
   bool light4 = true;
    var orange = Color.fromARGB(255, 255, 172, 47);

  Widget build(BuildContext context) {
        var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
      
      body: Container(
           margin: EdgeInsets.fromLTRB(0, mlr+10, 0, 0),
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 InkWell(
                              onTap: () {
                                // Navigator.of(context).popUntil((route) => route.isFirst);
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => const QuanlitaikhoanScreen()));
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black.withOpacity(0.6),
                                size: 30,
                              ),
                            ),
              Text(
                              'Cài đặt',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 16),
                            ),
                            Text('           ')
            ],),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(
                      
                      Icons.notifications_active_outlined,size: 40,),
                    Text('Thông báo',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
                 Switch(
                  
                          value: light1,
                          activeColor: orange ,
                          onChanged: (bool value) {
                            setState(() {
                              light1 = value;
                            });
                          }),
              ],),
            ), Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(
                      
                      Icons.volume_up_outlined,size: 40,),
                    Text('Âm thanh',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
                 Switch(
                  
                          value: light2,
                          activeColor: orange ,
                          onChanged: (bool value) {
                            setState(() {
                              light2 = value;
                            });
                          }),
              ],),
            ),
             Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(
                      
                      Icons.notifications_active_outlined,size: 40,),
                    Text('Chế độ ngày/đêm',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
                 Switch(
                  
                          value: light3,
                          activeColor: orange ,
                          onChanged: (bool value) {
                            setState(() {
                              light3 = value;
                            });
                          }),
              ],),
            ),
             Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(
                      
                      Icons.notifications_active_outlined,size: 40,),
                    Text('Nhắc nhở lịch học',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
                 Switch(
                  
                          value: light4,
                          activeColor: orange ,
                          onChanged: (bool value) {
                            setState(() {
                              light4 = value;
                            });
                          }),
              ],),
            ),
          ],
        ),
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 40, minWidth: r),
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
                              'Thay đổi lịch học',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ),
             ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 40, minWidth: r),
                        child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(orange),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.3)),
                                shape:
                                    MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Colors.grey.withOpacity(0.6))))),
                            onPressed: () {
                              // Navigator.of(context).popUntil((route) => route.isFirst);
                              // Navigator.push(context, MaterialPageRoute(builder:(context) => const DangkyScreen()));
                            },
                            child: Text(
                              'Đăng xuất',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
           ],
         ),
      ],)
       ),
    );
  }
}