import 'package:flutter/material.dart';
import 'package:flutter_blog/bean/BlogBean.dart';
import 'package:get/get.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 4/13/21.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
/// 代码清单

class MenuController extends GetxController {

  @override
  void onInit(){
    super.onInit();
    //初始化数据
    updateBlogList(_currentSelectIndex.value);
  }

  GlobalKey<ScaffoldState> _homeScaffoldKey = new GlobalKey();

  GlobalKey<ScaffoldState> get homeScaffoldKey => _homeScaffoldKey;

  //当前选中的索引
  RxInt _currentSelectIndex = 0.obs;

  int get currentSelectIndex => _currentSelectIndex.value;


  //菜单选项
  List<String> _menuList = [
    "首页",
    "Flutter",
    "Android",
    "iOS",
    "Java",
    "前端",
    "关于我们"
  ];

  List<String> get menuList => _menuList;

  void updateSelectIndex(int index) {
    //更新
    _currentSelectIndex.value = index;
    //更新列表数据
    updateBlogList(index);
  }

  //当前显示类目的文章数据
  RxList _blogList = [].obs;

  RxList get blogList=>_blogList;

  //存储不同分类的文章列表
  Map<int,List<BlogBean>> map = new Map();

  void updateBlogList(int index) async{
    print("$index");
    //先从map中获取
    List<BlogBean> list = map[index];
    if(list==null||list.length==0){
      list = [];
      String menu = _menuList[index];
      //清空当前页面显示数据
      _blogList.value = [];
      //模拟网络请求
      await Future.delayed(Duration(seconds: 1));
      for (int i = 0; i < 10; i++) {
        BlogBean bean = new BlogBean();
        bean.title = "$menu-$i-早起的年轻人";
        bean.imagePath="assets/images/banner.png";
        if(index%2==0){
          bean.imagePath="assets/images/banner2.webp";
        }
        list.add(bean);
      }
      map[index] = list;
    }
    _blogList.value = list;
  }

}
