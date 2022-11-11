import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu>with TickerProviderStateMixin  {
  late TabController _tabController;
  void initState(){
    super.initState();
    _tabController = TabController(length: 5, vsync:this);
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
              
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.shop),),
          Tab(icon: Icon(Icons.redeem),),
          Tab(icon: Icon(Icons.local_movies),),
          Tab(icon: Icon(Icons.notifications_active),),
          
      

      ]),
       ),
      body:  TabBarView(
    controller: _tabController,
  
        children:[
        Center(child: Text('Tat ca cac post '),),
        Center(child: Text('Story '),),
        Center(child: Text('Shop '),),
        Center(child: Text('New Feeds '),),
        Center(child: Text('Thong bao '),),
      ] ),
      
      );
  }
}