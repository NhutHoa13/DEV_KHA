import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CaidatScreen extends StatefulWidget {
  const CaidatScreen({super.key});

  @override
  State<CaidatScreen> createState() => _CaidatScreenState();
}

class _CaidatScreenState extends State<CaidatScreen> {
  @override
  Widget build(BuildContext context) {
    var r = MediaQuery.of(context).size.width / 2;
    var h = MediaQuery.of(context).size.height / 4;
    bool light = false;
    bool light2 = true;
    String _value = 'Tiếng việt';
    var orange = Color.fromARGB(255, 255, 172, 47);
    var sty = TextStyle(fontWeight: FontWeight.bold, fontSize: 15);
    return Scaffold(
      appBar: AppBar(title: Text("Chức năng cài đặt")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Container(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipOval(
                    child: Image(image: AssetImage('assets/images/logo.jpg')),
                  )),
            ),
          ),
          Text(
            'Nhựt Hòa',
            // textDirection: TextDirection.rtl,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          // TextField(
          //   decoration: InputDecoration(
          //       border: OutlineInputBorder(), labelText: 'Thông báo'),
          // )
          // TextField(
          //   decoration: InputDecoration(
          //     labelText: 'Thông báo',
          //     prefixIcon: Icon(Icons.notifications),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                ),
                Text(
                  'Thông báo',
                  style: sty,
                ),
                Expanded(
                  child: Switch(
                    value: light,
                    activeColor: Colors.greenAccent,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
///////////////////////////
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.volume_down_sharp,
                    size: 30,
                  ),
                ),
                Text(
                  'Âm thanh',
                  style: sty,
                ),
                Expanded(
                  child: Switch(
                    value: light2,
                    activeColor: Colors.greenAccent,
                    onChanged: (bool value) {
                      setState(() {
                        light2 = value;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          //////////////////////////
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.brightness_3_sharp,
                    size: 30,
                  ),
                ),
                Text(
                  'Chế độ ngày/đêm',
                  style: sty,
                ),
                Expanded(
                  child: Switch(
                    value: light2,
                    activeColor: Colors.greenAccent,
                    onChanged: (bool value) {
                      setState(() {
                        light2 = value;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          ////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: _value,
                items: <String>[
                  'Tiếng việt',
                  'English',
                  'Singapore',
                  'China',
                ].map((String _value) {
                  return DropdownMenuItem<String>(
                      value: _value, child: Text(_value));
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 40,
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (() {}),
                  child: Text('Thay đổi lịch học')),
            ),
          ),

          Container(
            height: 50,
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Colors.black.withOpacity(0.2),
                  ),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                    10,
                  )))),
              onPressed: (() {}),
              child: Text(
                'Đăng xuất',
                style: sty,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
