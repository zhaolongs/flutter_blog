import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/bean/BlogBean.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/17/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
/// 代码清单
///代码清单
class LeftContentItemWidget extends StatelessWidget {
  final BlogBean bean;

  LeftContentItemWidget(this.bean);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        //包裹一下
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "${bean.imagePath}",
            height: 400,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "${bean.title}",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
