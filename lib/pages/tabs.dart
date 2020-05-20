import 'package:fezs_shopkeeper/components/webview.dart';
import 'package:fezs_shopkeeper/pages/customer_management_page.dart';
import 'package:fezs_shopkeeper/pages/knowledge_base.dart';
import 'package:fezs_shopkeeper/pages/login_page.dart';
import 'package:fezs_shopkeeper/pages/performance_statistics.dart';
import 'package:fezs_shopkeeper/pages/personal_center.dart';
import 'package:flutter/material.dart';

/**
 * Tab状态存储 :
 *     https://cloud.tencent.com/developer/article/1507094
 */
class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  //记录当前选中哪个页面
  int _currentIndex = 0;
  //第1步，声明PageController
  PageController _pageController;

  List<Widget> _pages = [
    CustomerManagementPage(),
    PerformanceStatisticsPage(),
    KnowledgeBasePage(),
    PersonalCenterPage(),
    WebViewPage(),
  ];

  @override
  void initState() {
    super.initState();
    //第2步，初始化PageController
    this._pageController = PageController(initialPage: this._currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(child: this._pages[this._currentIndex]),
      //第3步，将body设置成PageView,并配置PageView的controller属性
      body: PageView(
        controller: this._pageController,
        children: this._pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red, //底部导航栏按钮选中时的颜色
        type: BottomNavigationBarType.fixed, //底部导航栏的适配，当item多的时候都展示出来
        currentIndex: this._currentIndex,
        onTap: (index) {
          setState(() {
            // this._currentIndex = index;

            //第4步，设置点击底部Tab的时候的页面跳转
            this._currentIndex = index;
            this._pageController.jumpToPage(this._currentIndex);
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
