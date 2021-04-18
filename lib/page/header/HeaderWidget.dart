import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/controller/MenuController.dart';
import 'package:flutter_blog/model/common.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'HeaderIconWidget.dart';
import 'HeaderTitleWidget.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/12/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
/// 顶部的菜单  小于 800 像素时 隐藏
/// 小于 800 时显示左拉菜单
class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  //绑定注入控制器
  MenuController _menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //主方向居中 对于Row 就是水平方向
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            //最大宽度
            //constraints: BoxConstraints(maxWidth: 1000),
            //填充
            width: double.infinity,
            child: Column(
              //包裹
              mainAxisSize: MainAxisSize.min,
              children: [
                //第一行的菜单选项
                Container(
                  //内边距
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  //最大宽度
                  constraints: BoxConstraints(maxWidth: 900),
                  child: buildRow(),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "一个爱喝茶的程序员",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "2021年是一个不平凡的年代，作为新一代的码农，我们需要砥砺前行，在每一个下雨的天气中",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),

                //查看更多
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "查看更多",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.arrow_forward_rounded),
                    ],
                  ),
                ),

                SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row buildRow() {
    return Row(
      children: [
        buildLeftMenu(),
        Text(
          "早起的年轻人",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: Colors.red,
          ),
        ),
        //中间的分类
        Expanded(
          child: buildMiddleRow(),
        ),
        //右侧的联系我们
        Row(
          children: [
            //小图标
            buildRightImage(),
            SizedBox(
              width: 10,
            ),
            //联系我们
            ElevatedButton(
              onPressed: () {},
              child: Text("联系我们"),
            ),
          ],
        )
      ],
    );
  }

  Widget buildMiddleRow() {
    if (CommonUtils.getScreenWidth(context) <= 840) {
      return Container();
    }

    //观察者
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            _menuController.menuList.length,
            (index) => HeaderTitleWidget(
              _menuController.menuList[index],
              _menuController.currentSelectIndex == index,
              onTab: () {
                _menuController.updateSelectIndex(index);
              },
            ),
          ),
        ],
      );
    });
  }

  ///左侧的菜单按钮
  buildLeftMenu() {
    if (CommonUtils.getScreenWidth(context) >= 840) {
      return Container();
    }
    return IconButton(
      icon: Icon(Icons.menu),
      color: Colors.white,
      onPressed: () {
        print("打开侧位菜单");
        _menuController.homeScaffoldKey.currentState.openDrawer();
      },
    );
  }

  buildRightImage() {
    if (CommonUtils.getScreenWidth(context) <= 580) {
      return Container();
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        HeaderIconWidget(
          path: "assets/images/qq_icon.png",
        ),
        HeaderIconWidget(
          path: "assets/images/wx_icon.png",
        ),
      ],
    );
  }
}
