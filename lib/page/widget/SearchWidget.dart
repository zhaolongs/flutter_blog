import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/16/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(22),
      padding: EdgeInsets.all(12),
      //圆角边框
      decoration: BoxDecoration(
        //背景颜色
        color: Colors.white,
        //背景圆角
        borderRadius: BorderRadius.all(
          //四个角的圆角
          Radius.circular(10),
        ),
      ),
      //竖直方向线性排开
      child: Column(
        //包裹
        mainAxisSize: MainAxisSize.min,
        //左对齐
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "搜索",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            //上边距
            margin: EdgeInsets.only(top: 12),
            //内边距
            padding: EdgeInsets.only(left: 12, right: 12),
            //边框
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              border: Border.all(color: Colors.grey, width: 1.0),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "请输入要搜索的内容 ",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          )
        ],
      ),
    );
  }
}
