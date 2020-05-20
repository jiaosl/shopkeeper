import 'package:fezs_shopkeeper/components/webview.dart';
import 'package:fezs_shopkeeper/pages/customer_management_page.dart';
import 'package:fezs_shopkeeper/pages/knowledge_base.dart';
import 'package:fezs_shopkeeper/pages/login_page.dart';
import 'package:fezs_shopkeeper/pages/performance_statistics.dart';
import 'package:fezs_shopkeeper/pages/personal_center.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0; //记录当前选中哪个页面

  List<Widget> _pages = [
    CustomerManagement(),
    PerformanceStatistics(),
    KnowledgeBase(),
    PersonalCenter(),
    WebViewPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: this._pages[this._currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red, //底部导航栏按钮选中时的颜色
        type: BottomNavigationBarType.fixed, //底部导航栏的适配，当item多的时候都展示出来
        currentIndex: this._currentIndex,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("客户管理")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("业绩统计")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("知识库")),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text("个人中心")),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text("webView"))
        ],
      ),
    );
  }
}
