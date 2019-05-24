import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<BottomNavigationBarDemo> {

  int _currentIndex = 0;

   void _onTapHandler (int index) {
     setState((){
       _currentIndex = index;
     });
   }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //可以设置激活的 tab 索引 比如
      currentIndex: _currentIndex,
      //切换激活状态函数
      onTap: _onTapHandler,
      //如果底部 tab 大于三个，要设置BottomNavigationBarType
      type: BottomNavigationBarType.fixed,
      //设置激活状态下 tab 的颜色
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('Explore'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('History'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('List'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('My'),
        ),
      ],
    );
  }
}
