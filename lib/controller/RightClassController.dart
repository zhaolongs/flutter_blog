import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/17/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
/// 
/// 代码清单 
///代码清单
class RightClassController extends GetxController{

  List<String> _classList = [
    "Android的入门到精通","Flutter 零基础教程","Java开发中的点滴积累","程序员的每日学习"
  ];
  List<String> _personList = [
    "早起的年轻人","每日学习"
  ];

  List<String> get classList =>_classList;

  List<String> get personList =>_personList;
}