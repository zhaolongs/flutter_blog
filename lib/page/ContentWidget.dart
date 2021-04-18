import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/model/common.dart';

import 'LeftContentWidget.dart';
import 'RightContentWidget.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/12/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
///主内容区
class ContentWidget extends StatefulWidget {
  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    //屏幕适配
    if (CommonUtils.getScreenWidth(context) <= 840) {
      return Container(
        child: LeftContentWidget(),
        margin: EdgeInsets.all(22),
      );
    }
    return Row(
      //顶部对齐
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //左侧的文章列表
        Expanded(
          flex: 2,
          child: LeftContentWidget(),
        ),
        //右侧的分类列表
        Expanded(
          flex: 1,
          child: RightContentWidget(),
        ),
      ],
    );
  }
}
