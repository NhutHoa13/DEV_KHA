// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/async.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// // import 'package:flutter_application_9/accueil.dart';
// // import 'package:flutter_application_9/result.dart';

// class getjason extends StatefulWidget {
//   const getjason({super.key});

//   @override
//   State<getjason> createState() => _getjasonState();
// }

// class _getjasonState extends State<getjason> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future  : DefaultAssetBundle.of(context).loadString("assets/quiz.json"),
//       builder: (context, snapshot) {
//         var mydata = json.decode(snapshot.data.toString());
        
//         if(mydata ==null){
//            return Scaffold(
//             body: Center(child: Text("loading"),),
//         );
//         }else{
//           return quiz(mydata:mydata,marks:0,vie:0,level:0,uid:'');
//         }
       
//       }
//     );
//   }
// }
// class quiz extends StatefulWidget {
//   final String uid;
//   var mydata;
//   int marks;
//    int vie;
//    int level;
//    quiz({super.key,required  this.mydata, required this.marks,required this.level,required this.vie,required this.uid});

//   @override
//   State<quiz> createState() => _quizState(mydata,marks,level,vie,uid);
// }

// class _quizState extends State<quiz> {
//   String message = "score"+"0"+"-"+"Best"+"0";
//   String levels = "level"+"0"+"/15";
//   String vies = "5";

//   final String uid;
//   var mydata;
//   int marks=0;
//    int vie=5;
//    int level=0;
//   _quizState(this.mydata,int marks,int level,int vie, this.uid);
//   Color ch = Colors.indigo;
//   Color rig = Colors.green;
//   Color wro = Colors.red;

//   int i =1;
//   int timer = 30;
//   int click =15;
//   String showtimer = "30";

//   Map<String,Color> btncolor = {
//     "a":Colors.indigoAccent,
//     "b":Colors.indigoAccent,
//     "c":Colors.indigoAccent,
//     "d":Colors.indigoAccent,
//   };

//   bool canceltimer = false;
//     int g=0;

//   void starttimer() async{
//     const onesec = Duration(seconds: 1);
//     Timer.periodic(onesec, (Timer t ){
//       setState(() {
//         if(timer <1){
//           t.cancel();
//           nextquestion();
//         }
//         else if(canceltimer ==true){
//           t.cancel();
//         }else{
//           timer = timer-1;

//         }
//         showtimer=timer.toString();
//       });
//     });
//   }

//   void nextquestion()async{
//     click =15;
//     canceltimer=false;
//     timer =20;
//     setState(() {
//       if(i<15){
//         level++;
//         levels ='level :'+"$level"+"/15";
//         i++;
//       }else{
//         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => result(marks:marks),));}
//       btncolor["a"]=Colors.indigoAccent;
//       btncolor["b"]=Colors.indigoAccent;
//       btncolor["c"]=Colors.indigoAccent;
//       btncolor["d"]=Colors.indigoAccent;
      
//     });
//     starttimer();
//   }
//   void quit(){
//             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => result(marks:marks),));}

  
//   void checkanswer(String k)async{
//     if(click ==15){
//         if(mydata[2][i.toString()]==mydata[1][i.toString()][k]){
//           marks = marks +5;
//           message ="Score "+ "$marks"+"-"+" Best "+ g.toString();
//           ch = rig;
//         }else{
//           ch  =wro;
//           vie = vie -1;
//           vies = "$vie";
//         }
//         setState(() {
//           btncolor[k] = ch;
//           if(k!="a"&& mydata[2][i.toString()]==mydata[1][i.toString()]["a"]){btncolor["a"]=rig;}
//           if(k!="b"&& mydata[2][i.toString()]==mydata[1][i.toString()]["b"]){btncolor["b"]=rig;}
//           if(k!="c"&& mydata[2][i.toString()]==mydata[1][i.toString()]["c"]){btncolor["c"]=rig;}
//           if(k!="d"&& mydata[2][i.toString()]==mydata[1][i.toString()]["d"]){btncolor["d"]=rig;}
//           canceltimer= true;
//         });
//         click =30;
//         if(vie>0){
//           Timer(Duration(seconds: 2),nextquestion);
//         }else{
//           Timer(Duration(seconds: 2),quit);
//         }
//     }
//   }
//   Widget choicebutton(String k){
//     return Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
//     child: MaterialButton(
//       onPressed: ()=>{checkanswer(k)},
//       child: Text(
//         mydata[1][i.toString()][k],
//         style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),
//         maxLines: 1,
//       ),
//       color: btncolor[k],
//       splashColor: Colors.indigo[700],
//       highlightColor: Colors.indigo[700],
//       minWidth: 400,
//       height: 45,
//       shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
//     ),);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(onPressed: (){
//                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => accueil(),));

//         }, icon: Icon(Icons.arrow_back,color:Colors.white),
//         ),
//         title: Text('ART QUICK QUIZ'),
//         actions: [
//           Text(vies,style: TextStyle(height: 2,fontSize: 20,fontWeight: FontWeight.bold),),
//           IconButton(onPressed: (){

//           }, icon: Icon(Icons.favorite,color:Colors.red))
//         ],
//         toolbarHeight: 50,
//         centerTitle: true,
//       ),
//       body: Scrollbar(
//         child: Container(
//           padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//           decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             borderRadius: BorderRadius.circular(1),
//             color: Colors.blueAccent,

//           ),
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       width: 180,
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.indigoAccent,

//                       ),
//                       child: Text(message,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 18
//                       ),),
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(10),
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.indigoAccent,

//                       ),
//                       child: Text(levels,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 18
//                       ),),
//                     )
//                   ],
//                 )),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.rectangle,
//                       borderRadius: BorderRadius.circular(15),color:Colors.indigoAccent),
//                       padding: EdgeInsets.fromLTRB(5, 1, 5, 0),
//                       margin: EdgeInsets.fromLTRB(5, 1, 5, 0),
//                       alignment: Alignment.center,
//                       child: Text(
//                         mydata[0][i.toString()],
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       padding: EdgeInsets.fromLTRB(5, 1, 5, 0),
//                       alignment: Alignment.center,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           choicebutton('a'),
//                           choicebutton('b'),
//                           choicebutton('c'),
//                           choicebutton('d'),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(

//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.all(0),
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         borderRadius: BorderRadius.circular(200),
//                         color: Colors.indigoAccent,boxShadow: kElevationToShadow[8],
//                       ),
//                       child: Center(
//                         child: Text(
//                           showtimer,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 40,
//                             color: Colors.white,
                            
//                           ),
//                         ),
//                       ),
//                     ))
//         ],
//           ),
//         ),
//       ),
//     );
//   }
// }