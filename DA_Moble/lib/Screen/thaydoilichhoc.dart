import 'package:flutter/material.dart';

class thaydoilichhocScreen extends StatefulWidget {
  const thaydoilichhocScreen({super.key});

  @override
  State<thaydoilichhocScreen> createState() => _thaydoilichhocScreenPageState();
}

class _thaydoilichhocScreenPageState extends State<thaydoilichhocScreen> {
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
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Mục Tiêu ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 79, 78, 78),
                            fontWeight: FontWeight.bold),
                      )),
                  // const Padding(
                  //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  //     child: Text(
                  //       "Quay về",
                  //       style: TextStyle(
                  //           fontSize: 15,
                  //           color: Color.fromARGB(255, 255, 94, 0)),
                  //     )
                  //     ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(250, 254, 254, 254).withOpacity(0.8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)))),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "3 phút / 1 ngày ",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Dễ",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(250, 254, 254, 254).withOpacity(0.8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)))),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "10 phút / 1 ngày ",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Vừa",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(250, 254, 254, 254).withOpacity(0.8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)))),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "15 phút / 1 ngày ",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Khó",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(250, 254, 254, 254).withOpacity(0.8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)))),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "30 phút / 1 ngày ",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "Siêu khó",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color(0xFBF15B04).withOpacity(0.8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)))),
                onPressed: () => {},
                child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text("Lưu lại"))),
          ),
        ],
      ),
    ));
  }
}
