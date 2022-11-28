import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class XemXhangMan extends StatefulWidget {
  const XemXhangMan({super.key});

  @override
  State<XemXhangMan> createState() => _XemXhangManState();
}

class _XemXhangManState extends State<XemXhangMan> {
  var orange = Color.fromARGB(255, 255, 172, 47);

  @override
  Widget build(BuildContext context) {
    var r = MediaQuery.of(context).size.width / 5;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Màn 1",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        shadowColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.orange, //màu nền ẩn hiện của button
                  side: BorderSide(
                      color: Colors.orange,
                      width: 2)), //chỉnh màu viền cho button

              onPressed: (() {}),
              child: Container(
                height: 60,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 10, 10, 10),
                      child: Image(
                        image: AssetImage("assets/images/medal.png"),
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage("assets/images/logo.jpg"),
                          width: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 150, 5),
                      child: Text("Nhựt Hòa"),
                    ),
                    TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "Score",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.orange, //màu nền ẩn hiện của button
                  side: BorderSide(
                      color: Colors.orange,
                      width: 2)), //chỉnh màu viền cho button

              onPressed: (() {}),
              child: Container(
                height: 60,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 10, 10, 10),
                      child: Image(
                        image: AssetImage("assets/images/medal.png"),
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage("assets/images/profile.png"),
                          width: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 170, 5),
                      child: Text("Cao kỳ"),
                    ),
                    TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "Score",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
