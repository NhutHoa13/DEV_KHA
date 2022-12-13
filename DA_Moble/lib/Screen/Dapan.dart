import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DapanScreen extends StatefulWidget {
  const DapanScreen({super.key});

  @override
  State<DapanScreen> createState() => _DapanScreenState();
}

class _DapanScreenState extends State<DapanScreen> {
   var orange = Color.fromARGB(255, 255, 172, 47);
   int num =100;
  @override
  Widget build(BuildContext context) {
       var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
   
    return Scaffold(  
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, mlr + 10, 0, 0),
          child:
        
          Column(
           
            children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: InkWell(
                                onTap: () {
                                  // Navigator.of(context).popUntil((route) => route.isFirst);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             TrangchuSrceen()));
                                  // Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black.withOpacity(0.6),
                                  size: 30,
                                ),
                              ),
              ),
                       Center(
                         child: Row(
                         
                          children: [
              Text('Scores: ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),  
              Text('${num}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ],),
                       ),
            Row(children: [
              Icon(Icons.favorite,color: Colors.red,),
              Icon(Icons.favorite,color: Colors.red,),
              Icon(Icons.favorite,color: Colors.red,),
             
            ],)
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('15',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    
                    child: Image(
                      image: AssetImage('assets/images/h1.jpg')))
                ],
              ),
            ),
            Container(
             
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Row(
                children: [
                  Expanded(
                     
                    
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Câu 1:',style: TextStyle(fontSize: 18,color: Colors.black),),
                        Text('She is wearing blue ____ and is my girlfriend.',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                       
                        
                      
                      ]),
                      )
                      )
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    height: 30,
                    width: 30,
                    image: AssetImage('assets/images/clover.png')),
                    Text('Gợi ý',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                minimumSize: Size(r-mlr, 50),
                side: BorderSide(color: Colors.black), // foreground border
              ),
                onPressed: (){}, 
                child: Text('Shoes', style: TextStyle(fontSize: 24,color: Colors.black),)),
            ),
               Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                minimumSize: Size(r-mlr, 50),
                side: BorderSide(color: Colors.black), // foreground border
              ),
                onPressed: (){}, 
                child: Text('Shoes', style: TextStyle(fontSize: 24,color: Colors.black),)),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                minimumSize: Size(r-mlr, 50),
                side: BorderSide(color: Colors.black), // foreground border
              ),
                onPressed: (){}, 
                child: Text('Shoes', style: TextStyle(fontSize: 24,color: Colors.black),)),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                minimumSize: Size(r-mlr, 50),
                side: BorderSide(color: Colors.black), // foreground border
              ),
                onPressed: (){}, 
                child: Text('Shoes', style: TextStyle(fontSize: 24,color: Colors.black),)),
            ),
          ],)
        )
        )
        );
  }
}