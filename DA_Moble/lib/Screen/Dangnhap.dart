import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_application_1/Screen/Dangky.dart';
import 'package:flutter_application_1/Screen/Quanlytaikhoan.dart';
import 'package:flutter_application_1/Screen/Quenmatkhau.dart';
import 'package:flutter_application_1/Screen/Trangchu.dart';
import 'package:flutter_application_1/Screen/screen.dart';

class DangnhapScreen extends StatefulWidget {
  const DangnhapScreen({super.key});

  @override
  State<DangnhapScreen> createState() => _DangnhapScreenState();
}

class _DangnhapScreenState extends State<DangnhapScreen> {
  bool ishiden = true;
  Icon iconshow = Icon(Icons.visibility_off);
  void hiden(){
    setState(() {
      if(ishiden=!ishiden){
        setState(() {
          iconshow = Icon(Icons.visibility_off);
        });
      }else{
        iconshow = Icon(Icons.visibility);
      }
    });
  }
  var orange = Color.fromARGB(255, 255, 172, 47);
  bool isChecked = false;
  var style = Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black.withOpacity(0.3),
        style: BorderStyle.solid,
        width: 2,
      ),
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15.0),
      //color: Color.fromARGB(255, 25, 119, 197)
    ),
  );
  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/backgroup2.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            // Navigator.of(context)
                            //     .popUntil((route) => route.isFirst);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TrangchuSrceen()));
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black.withOpacity(0.6),
                            size: 30,
                          ),
                        ),
                        Text(
                          'Đăng nhập',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16),
                        ),
                        Text('           ')
                      ],
                    ),
                    Image(
                      image: AssetImage('assets/images/logoapp1.png'),
                      width: r / 3,
                    ),
                    // Text(
                    //   'Chào mừng đến DSEL',
                    //   style: TextStyle(
                    //       fontSize: 28,
                    //       fontWeight: FontWeight.bold,
                    //       color: orange),
                    // ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tên đăng nhập',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: orange)),
                                border: OutlineInputBorder(),
                                hintText: "Nhập tên đăng nhập hoặc email",
                                prefixIcon: (Icon(Icons.account_circle)),
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 58, 58, 58),
                                    fontSize: 15)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mật khẩu',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            obscureText: ishiden,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: orange)),
                              border: OutlineInputBorder(),
                              hintText: "Nhập mật khẩu",
                              prefixIcon: (Icon(Icons.lock_outline)),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  hiden();
                                },
                                child: iconshow,
                              ),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 58, 58, 58),
                                  fontSize: 15),

                              //prefixIcon: Icon(Icons.lock),
                              //border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  checkColor: Colors.white,
                                  //fillColor: MaterialStateColor,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                              Text('Nhớ mật khẩu'),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const QuenmatkhauScreen()));
                            },
                            child: Text(
                              'Quên mật khẩu',
                              style: TextStyle(
                                  color: orange,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(minWidth: r - mlr, minHeight: 50),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(orange),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)))),
                          onPressed: () {
                           Navigator.of(context)
                                .popUntil((route) => route.isFirst);
                           Navigator.push(
                                context,
                               MaterialPageRoute(
                                   builder: (context) =>  HomeScreen ()));
                          },
                          // child: const Padding(
                          //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text(
                            "Đăng nhập",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
