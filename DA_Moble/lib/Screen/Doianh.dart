import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Chinhsuahoso.dart';

class DoianhScreen extends StatefulWidget {
  const DoianhScreen({super.key});

  @override
  State<DoianhScreen> createState() => _DoianhScreenState();
}

class _DoianhScreenState extends State<DoianhScreen> {
    var orange = Color.fromARGB(255, 255, 172, 47);
  @override

  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child: Container(
         margin: EdgeInsets.fromLTRB(0, mlr+10, 0, 0),
         child: Column(children: [
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            InkWell(
                            onTap: () {
                              Navigator.of(context).popUntil((route) => route.isFirst);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChinhsuahosoScreen()));
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black.withOpacity(0.6),
                              size: 30,
                            ),
                          ),
                          
                        
                        Text(
                          'Avatar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16),
                        ),
                        Text('      ')
          ],),
           Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('assets/images/logo.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(90, 70, 0, 0),
                      child: Align(
                        child: Icon(
                          Icons.draw_sharp,
                          //border_color_sharp
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
               Text(
                  'Cập nhật Avatar',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: orange),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 for(var i=1; i < 5; i++ )...{
                  Column(children: [
                     for(var i=1; i < 5; i++ )...{
                         Container(
                    padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Expanded(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipOval(
                            child: Image(
                              image: AssetImage('assets/images/profile.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                     }
                  ],)
                 
                
              },],)
              // GridView.count(  
              //   crossAxisCount: 3,  
              //   crossAxisSpacing: 4.0,  
              //   mainAxisSpacing: 8.0,  
              //   children: List.generate(choices.length, (index) {  
              //     return Center(  
              //       child: SelectCard(choice: choices[index]),  
              //     );  
              //   }  
              //   )  ,
              //    Container(
              //   alignment: Alignment.center,
              //   child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child:  ConstrainedBox(
              //               constraints: BoxConstraints(minHeight: 40, minWidth: 200),
              //               child: TextButton(
              //                   style: ButtonStyle(
              //                       foregroundColor:
              //                           MaterialStateProperty.all<Color>(Colors.white),
              //                       backgroundColor:
              //                           MaterialStateProperty.all<Color>(orange),
              //                       shape:
              //                           MaterialStateProperty.all<RoundedRectangleBorder>(
              //                               RoundedRectangleBorder(
              //                                   borderRadius: BorderRadius.circular(10),
              //                                   side: BorderSide(color: orange)))),
              //                   onPressed: () {
              //                     Navigator.of(context).popUntil((route) => route.isFirst);
              //                     Navigator.push(context, MaterialPageRoute(builder:(context) => const ChinhsuahosoScreen()));
              //                   },
              //                   child: Text(
              //                     'Lưu',
              //                     style: TextStyle(
              //                         fontSize: 18, fontWeight: FontWeight.bold),
              //                   )),
              //             ),
              //       ),
              // ),
         ],),
      )
      ,),
    );
  }
}