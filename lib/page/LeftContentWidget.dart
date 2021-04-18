import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/bean/BlogBean.dart';
import 'package:flutter_blog/controller/MenuController.dart';
import 'package:flutter_blog/page/widget/LeftContentItemWidget.dart';
import 'package:get/get.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/12/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
/// 代码清单
///代码清单
class LeftContentWidget extends StatelessWidget {
  final MenuController _menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return buildListView();
    });
  }

  Widget buildListView() {
    //获取数据
    RxList list = _menuController.blogList;
    if(list.length==0){
      return Text("加载中 ... ");
    }
    return ListView.builder(
      //内边距
      padding: EdgeInsets.only(top: 22, bottom: 22),
      //禁止滑动
      physics: NeverScrollableScrollPhysics(),
      //包裹
      shrinkWrap: true,
      //子条目个数
      itemCount: list.length,
      //每个子Widget
      itemBuilder: (BuildContext context, int index) {
        //获取对应的数据
        BlogBean bean = list[index];
        return LeftContentItemWidget(bean);
      },
    );
  }
}
