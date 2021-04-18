import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/16/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///

class RightClassWidget extends StatelessWidget {

  final String title;
  final List<String> classList;

  const RightClassWidget({Key key, this.title, this.classList}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //外边距
      margin: EdgeInsets.only(left: 22,right: 22,bottom: 22),
      //内边距
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
            "$title",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          ListView(
            //包裹
            shrinkWrap: true,
            children: [
              ...classList.map(
                (e) => ListTile(
                  title: Text("${e}"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
