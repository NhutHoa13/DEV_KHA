import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component/widget_item.dart';
import 'package:flutter_application_1/model/db_content.dart';

class XemXhangMan extends StatefulWidget {
  const XemXhangMan({super.key});

  @override
  State<XemXhangMan> createState() => _XemXhangManState();
}

class _XemXhangManState extends State<XemXhangMan> {
  var orange = Color.fromARGB(255, 255, 172, 47);

  @override
  Widget build(BuildContext context) {
        var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          
          child: Text(
            "Màn 1",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        shadowColor: Colors.black,
        
      ),
      body:   
         Column(children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              height: MediaQuery.of(context).size.height * 0.6,
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
              ])),
              ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 50, minWidth: r),
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
                              'Quay lại',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            )),
                      ),
        ])
      );
  }
}
