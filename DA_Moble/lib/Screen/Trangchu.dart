import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrangchuSrceen extends StatefulWidget {
  const TrangchuSrceen({super.key});

  @override
  State<TrangchuSrceen> createState() => _TrangchuSrceenState();
}

class _TrangchuSrceenState extends State<TrangchuSrceen> {
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
  var style1 = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.6));
  //fontSize: 16);

  @override
  Widget build(BuildContext context) {
    var mlr = 20.0;
    var r = MediaQuery.of(context).size.width - mlr;
    var l = MediaQuery.of(context).size.width - mlr;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Trang chủ'),
      ),
      body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Column(
                children: [
                  Container(
                    width: r / 2,
                    child: Image(
                      image: AssetImage('assets/images/language.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                    child: Text(
                      'Ten ung dung',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: orange),
                    ),
                  ),
                  Text(
                    'Học miễn phí, Chơi giải trí',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            Column(
              children: [
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
                      onPressed: () {},
                      child: Text(
                        'Đăng ký',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 60),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 50, minWidth: r),
                    child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 1, color: orange),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Tôi đã có tài khoản',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: orange),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ))
    );
  }
}
