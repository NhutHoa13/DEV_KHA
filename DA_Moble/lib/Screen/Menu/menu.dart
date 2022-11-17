import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screen/Xemxephang.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu>with TickerProviderStateMixin  {
  late TabController _tabController;
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync:this);
  }

  @override
  Widget build(BuildContext context) {

     return Scaffold(
      
    
      
       bottomNavigationBar:  Container(
        color: Colors.blue,
         child: TabBar(
          labelColor: Colors.yellow, // màu của các icon khi nhấn vô
          unselectedLabelColor: Colors.red, // màu hiển sẵn khi hông nhấn vô
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(5),
          indicatorColor: Colors.black, // Đường gạch khi chọn vào 
          controller: _tabController,
          tabs: [
              
          Tab(icon: Image(image: AssetImage('assets/images/map.png')),),
          Tab(icon: Image(image: AssetImage('assets/images/swords.png')),),
          Tab(icon: Image(image: AssetImage('assets/images/trophy.png')),),
          Tab(icon: Image(image: AssetImage('assets/images/woman.png')),),
         
          
      

      ]),
       ),
      body:  TabBarView(
    controller: _tabController,
  
        children:[
        Center(child: Text('Tat ca cac post '),),
        Center(child: Text('Story '),),
        Center(child: Text('Story '),),
        Center(child: Text('New Feeds '),),
        
      ] ),
      
      );
  }
}