import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuenmatkhauScreen extends StatefulWidget {
  const QuenmatkhauScreen({super.key});

  @override
  State<QuenmatkhauScreen> createState() => _QuenmatkhauScreenState();
}

class _QuenmatkhauScreenState extends State<QuenmatkhauScreen> {
  var orange = Color.fromARGB(255, 255, 172, 47);
  var myLabelStyle = TextStyle(
    color: Colors.black.withOpacity(0.3),
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  var myTextStyle =
      TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0));

  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
         resizeToAvoidBottomInset: false,     
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.clear,
                              color: Colors.black.withOpacity(0.6),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image(
                        image: AssetImage('assets/images/language.png'),
                        width: r / 2,
                      ),
                    ),
                    Text(
                      'Quên mật khẩu',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: orange),
                    ),
                    Text(
                        'Nhập lại địa chỉ email để nhận lại đường dẫn đặt mật khẩu',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: myTextStyle,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: orange)),
                            border: OutlineInputBorder(),
                            labelText: "Email",
                            prefixIcon: (Icon(Icons.email_outlined)),
                            labelStyle: myLabelStyle),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: r / 2, minHeight: 45),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)))),
                      onPressed: () {},
                      // child: const Padding(
                      //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Gửi mail",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        )
      );
  }
}