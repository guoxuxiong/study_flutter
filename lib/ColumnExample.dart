import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnExample  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ColumnState();
  }

}
class _ColumnState extends State<ColumnExample>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text("水平、垂直布局练习"),
      ),
      body:
      new Center(
        child:
            //垂直布局
        Column(
          //测试Row对齐方式，排除Column默认居中对齐的干扰
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //水平布局
            Row(
              //居中对齐
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
              Text("hello word"),
              Text("I am Jack"),

              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
              Text("hello word"),
              Text("I am Jack"),

              ],
            ),
            Row(
              //右对齐
              mainAxisAlignment: MainAxisAlignment.end,

              children: <Widget>[
              Text("hello word"),
              Text("I am Jack"),

              ],
            ),
            Row(
              //右对齐
//              mainAxisAlignment: MainAxisAlignment.end,
                //设置左边文字样式
                crossAxisAlignment: CrossAxisAlignment.start,
              //设置文字对齐方式
              verticalDirection: VerticalDirection.up,
              children: <Widget>[

                Text(" hello world ", style: TextStyle(fontSize: 30.0,color: Colors.black),),
                Text(" I am Jack "),
              ],
            )
          ],
        ),
      ),
    );
  }

}