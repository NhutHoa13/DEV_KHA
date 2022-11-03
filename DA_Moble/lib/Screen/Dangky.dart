import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DangkyScreen extends StatefulWidget {
  const DangkyScreen({super.key});

  @override
  State<DangkyScreen> createState() => _DangkyScreenState();
}

class _DangkyScreenState extends State<DangkyScreen> {
  var orange = Color.fromARGB(255, 255, 172, 47);

  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        
        body: Container(
          margin: EdgeInsets.fromLTRB(0, mlr+10, 0, 0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
              
                Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, r / 2 / 2, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black.withOpacity(0.6),
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          'Đăng ký',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16),
                        )
                      ],
                    ),
                    Image(
                      image: AssetImage('assets/images/language.png'),
                      width: r / 3,
                    ),
                    Text(
                      'Tạo tài khoản',
                      style: TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold, color: orange),
                    ),
                  ],
                ),
                Column(
                
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: orange)),
                                border: OutlineInputBorder(),
                            labelText: "Nhập tên người dùng",
                            prefixIcon: (Icon(Icons.account_circle)),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 58, 58, 58),
                                fontSize: 15)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: orange)),
                                border: OutlineInputBorder(),
                            labelText: "Nhập địa chi email",
                            prefixIcon: (Icon(Icons.email_outlined)),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 58, 58, 58),
                                fontSize: 15)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                            obscureText: true ,
                           
                        decoration: InputDecoration(
                          
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: orange)),
                                border: OutlineInputBorder(),
                            labelText: "Nhập mật khẩu",
                              prefixIcon: (Icon(Icons.lock_outline)),
                                  suffixIcon: Icon(Icons.remove_red_eye),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 58, 58, 58),
                                fontSize: 15),
                              
                                //prefixIcon: Icon(Icons.lock),
                               //border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                            obscureText: true,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: orange,)),
                                border: OutlineInputBorder(),
                            labelText: "Xác nhận lại mật khẩu",
                            prefixIcon: Icon(Icons.lock_person_outlined),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 58, 58, 58),
                                fontSize: 15)),
                                
                      ),
                    ),
                   
                  ],
                ),
                 Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                   child: ConstrainedBox(
                        constraints: BoxConstraints(minWidth: r/2, minHeight: 50),
                        child: ElevatedButton(

                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(orange),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)))),
                            onPressed: () {},
                            // child: const Padding(
                            //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text(
                              "Tạo tài khoản",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),
                      ),
                 ),
              ]),
        ));
  }
}