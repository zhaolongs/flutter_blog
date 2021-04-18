import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/12/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
/// 代码清单
///代码清单
class HeaderTitleWidget extends StatelessWidget {
  final String title;
  final Function onTab;
  final bool isSelect;

  HeaderTitleWidget(this.title, this.isSelect,{this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: isSelect?FontWeight.w600:FontWeight.w500,
            color: isSelect?Colors.red:Colors.white,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}
