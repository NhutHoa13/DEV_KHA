import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Doikhang.dart';

import 'package:flutter_application_1/Screen/Quanlihoso.dart';
import 'package:flutter_application_1/Screen/Trangchu.dart';
import 'package:flutter_application_1/Screen/Xemxephang.dart';

class screen_home extends StatefulWidget {
  const screen_home({super.key});

  @override
  State<screen_home> createState() => _screen_homeState();
}

class _screen_homeState extends State<screen_home> with TickerProviderStateMixin {
   late TabController _tabController;
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync:this);
  }
 
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      
    
       bottomNavigationBar:  Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
         child: TabBar(
          
          labelColor: Colors.yellow, // màu của các icon khi nhấn vô
          unselectedLabelColor: Colors.red, // màu hiển sẵn khi hông nhấn vô
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(10),
          indicatorColor: Colors.black, // Đường gạch khi chọn vào 
        
        

          controller: _tabController,
          tabs: [
              
          Tab(icon: Image(image: AssetImage('assets/images/map.png')),),
          Tab(icon:  Image(image: AssetImage('assets/images/swords.png')),),
          Tab(icon:  Image(image: AssetImage('assets/images/trophy (1).png')),),
          Tab(icon:  Image(image: AssetImage('assets/images/woman.png')),),
          
      

      ]),
       ),
      body:  TabBarView(
    controller: _tabController,
  
        children:[
        Center(child:Text('Story '), ),
        
        Center(child: DoikhangScreen(),),
        Center(child: XemxephangScreen()),
        Center(child:QuanlihosoScreen(),),
      ] ),
      
      );
  }
}