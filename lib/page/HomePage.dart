import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/controller/MenuController.dart';
import 'package:get/get.dart';

import 'ContentWidget.dart';
import 'header/HeaderWidget.dart';
import 'menu/SlideMenuWidget.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/12/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
/// 代码清单
///代码清单
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuController _menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //定义一个key
      key: _menuController.homeScaffoldKey,
      backgroundColor: Colors.grey[200],
      //侧拉页面
      drawer: SlideMenuWidget(),

      ///页面整体滑动
      body: SingleChildScrollView(
        child: Column(
          children: [
            //第一部分的标题
            HeaderWidget(),
            //第二部分的内容
            Container(
              child: ContentWidget(), //最大宽度
              constraints: BoxConstraints(maxWidth: 1000),
            ),
          ],
        ),
      ),
    );
  }
}
