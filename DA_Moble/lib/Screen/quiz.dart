import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Tongket.dart';

import '../contraints/color.dart';
import '../model/cauhoi.dart';

class quiz extends StatefulWidget {
  const quiz({super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
   int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
       // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
           height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup5.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
            child: PageView.builder(
              controller: _controller!,
              onPageChanged: (page) {
                if (page == questions.length - 1) {
                  // setState(() {
                  //   btnText = "See Results";
                  // });
                }
                setState(() {
                  answered = false;
                });
              },
              physics: new NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
              Text('${score}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ],),
                       ),
            Row(children: [
              Icon(Icons.favorite,color: Colors.red,),
              Icon(Icons.favorite,color: Colors.red,),
              Icon(Icons.favorite,color: Colors.red,),
             
            ],)
            ],),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Question ${index + 1}/10",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                     Image(
                       width: double.infinity,
                      height: 100,
                      image: AssetImage("${questions[index].path}"),fit: BoxFit.fill,),
                    SizedBox(
                      width: double.infinity,
                      height: 100.0,
                      child: Text(
                        "${questions[index].question}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                   
                    for (int i = 0; i < questions[index].answers!.length; i++)
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: EdgeInsets.only(
                            bottom: 10.0, left: 12.0, right: 12.0),
                        child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillColor: btnPressed
                              ? questions[index].answers!.values.toList()[i]
                                  ? Colors.green
                                  : Colors.red
                              : AppColor.secondaryColor,
                          onPressed: !answered
                              ? () {
                                  if (questions[index]
                                      .answers!
                                      .values
                                      .toList()[i]) {
                                    score=score +50;
                                    print("yes");
                                  } else {
                                    print("no");
                                  }
                                  setState(() {
                                    btnPressed = true;
                                    answered = true;
                                  });
                                }
                              : null,
                          child: Text(questions[index].answers!.keys.toList()[i],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              )),
                        ),
                      ),
                    SizedBox(
                      height: 40.0,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        if (_controller!.page?.toInt() == questions.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TongketScreen(score: score)));
                        } else {
                          _controller!.nextPage(
                              duration: Duration(milliseconds: 250),
                              curve: Curves.easeInExpo);
      
                          setState(() {
                            btnPressed = false;
                          });
                        }
                      },
                      shape: StadiumBorder(),
                      fillColor: Colors.orange,
                      padding: EdgeInsets.all(18.0),
                      elevation: 0.0,
                      child: Text(
                        btnText,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                );
              },
              itemCount: questions.length,
            )),
      ),
    );
  }
}
