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
class HeaderIconWidget extends StatelessWidget {
  //来个路径
  final String path;

  //来个点击事件
  final  Function onTab;

  const HeaderIconWidget({Key key, this.path, this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Image.asset(
          path,
          width: 22,
        ),
      ),
    );
  }
}
