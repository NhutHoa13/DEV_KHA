import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MuavatphamScreen extends StatefulWidget {
  const MuavatphamScreen({super.key});

  @override
  State<MuavatphamScreen> createState() => _MuavatphamScreenState();
}

class _MuavatphamScreenState extends State<MuavatphamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(child: Column(children: [
          Row(
            children: [
              Text('Ho so'),
              Icon(Icons.settings),
            ],
          ),
          Row(children: [
            Image(
              height: 50,
              width: 50,
              image: AssetImage('assets/images/language.png',)),
            Text('Chinh sua ho so')
          ],),
          Text('Thống kê'),
          Container(
            
            child: 
            Row(children: [
            Column(children: [
                OutlinedButton(onPressed: (){}, child: Text('Tổng điểm KN')),
                OutlinedButton(onPressed: (){}, child: Text('Trận đã chơi')),
            ],),
            Column(children: [
                OutlinedButton(onPressed: (){}, child: Text('Tổng điểm KN')),
                OutlinedButton(onPressed: (){}, child: Text('Trận đã chơi')),
            ],),
            
          ],),
          
          ),
           Text('Thống kê'),
           Row(children: [
            Column(children: [
                  OutlinedButton(onPressed: (){}, child: Text('Thành tích') ),
                  OutlinedButton(onPressed: (){}, child: Text('Thành tích') ),
                  OutlinedButton(onPressed: (){}, child: Text('Thành tích') ),
                  OutlinedButton(onPressed: (){}, child: Text('Thành tích') ),
                  OutlinedButton(onPressed: (){}, child: Text('Thành tích') ),
            ],)
              
           ],)
      ],),
      
    
      ),
    );
  }
}