import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_blog/controller/MenuController.dart';
import 'package:get/get.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/13/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
/// 左侧拉菜单
class SlideMenuWidget extends StatelessWidget {
  //绑定Controller
  final MenuController _menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Obx((){
          return buildListView();
        }),
      ),
    );
  }

  ListView buildListView() {
    return ListView(
      children: [
        DrawerHeader(
          child: Container(
            padding: EdgeInsets.only(
              top: 60,
            ),
            child: Text(
              "早起的年轻人",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        ...List.generate(
          _menuController.menuList.length,
          (index) => SlideMenuItemWidget(_menuController.menuList[index],
              _menuController.currentSelectIndex == index, () {
            _menuController.updateSelectIndex(index);
          }),
        ),
      ],
    );
  }
}

class SlideMenuItemWidget extends StatelessWidget {
  //显示的标题
  final String title;

  //是否选中
  final bool isSelect;

  //当前的点击事件
  final Function onTap;

  SlideMenuItemWidget(this.title, this.isSelect, this.onTap);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      //内边距
      contentPadding: EdgeInsets.only(left: 20),
      //是否选中
      selected: isSelect,
      //选中时的颜色
      selectedTileColor: Colors.red,
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
      ),
    );
  }
}
