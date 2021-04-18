import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/page/widget/RightClassWidget.dart';
import 'package:flutter_blog/page/widget/SearchWidget.dart';
import 'package:flutter_blog/controller/RightClassController.dart';
import 'package:get/get.dart';
/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/12/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
///
class RightContentWidget extends StatefulWidget {
  @override
  _RightContentWidgetState createState() => _RightContentWidgetState();
}

class _RightContentWidgetState extends State<RightContentWidget> {

  final RightClassController _rightClassController = Get.put(RightClassController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //第一行的搜索
          SearchWidget(),
          //第二行的分类
          RightClassWidget(title:"分类",classList:_rightClassController.classList),
          //第三行的专家解读
          RightClassWidget(title:"专家解读",classList:_rightClassController.personList),
        ],
      ),
    );
  }
}
