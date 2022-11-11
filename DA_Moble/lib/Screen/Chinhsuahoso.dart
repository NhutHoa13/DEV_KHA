import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chinhsuahoso extends StatefulWidget {
  const Chinhsuahoso({super.key});

  @override
  State<Chinhsuahoso> createState() => _ChinhsuahosoState();
}

class _ChinhsuahosoState extends State<Chinhsuahoso> {
  @override
  Widget build(BuildContext context) {
    var rong = MediaQuery.of(context).size.width / 3;
    var dai = MediaQuery.of(context).size.height;
    var kieu = TextStyle(
        color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20);
    var orange = Color.fromARGB(255, 255, 172, 47);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chỉnh sửa hồ sơ',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/logo.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 70, 0, 0),
                  child: Align(
                    child: Icon(
                      Icons.draw_sharp,
                      //border_color_sharp
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            'Thay đổi ảnh đại diện',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Row(
              children: [
                Text(
                  'Tên',
                  style: kieu,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Hòa ",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          ////tên đăng nhập
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Row(
              children: [
                Text(
                  'Tên đăng nhập',
                  style: kieu,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "hoa chơi dơ ",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          ////Email
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Row(
              children: [
                Text(
                  'Email',
                  style: kieu,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "nhuthoa@gmail.com ",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),

          ///Mật khẩu
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Row(
              children: [
                Text(
                  'Mật khẩu',
                  style: kieu,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "********* ",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),

          ///nút lưu
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (() {}),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Colors.orange,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(
                    20, //tạo cái bóng
                  ),
                ),
                child: Text(
                  'Lưu',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
              // ElevatedButton(
              //   onPressed: (() {}),
              //   style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all<Color>(
              //       Color.fromARGB(255, 249, 170, 33),
              //     ),

              //     foregroundColor: MaterialStateProperty.all<Color>(
              //       Colors.white,
              //     ),
              //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //       RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(
              //           20,
              //         ), //độ cong của nút
              //         // side: BorderSide(color: Colors.black),kích thước màu viền của nút
              //       ),
              //     ),
              //     elevation: MaterialStateProperty.all<double>(
              //       50,
              //     ),
              //   ),
              //   child: const Text(
              //     'Lưu',
              //     style: TextStyle(
              //       fontSize: 30,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),

              ),
        ],
      ),
    );
  }
}
