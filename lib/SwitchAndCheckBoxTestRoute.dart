import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SwitchAndCheckBoxTestRouteState();
  }
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  //定义一个布尔类型 单选状态
  bool _switchSelected = false;

  //复选状态
  bool _checkboxSelected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("第二个页面"),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            Switch(
              value: _switchSelected,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            Checkbox(
              value: _checkboxSelected,
              //选择时颜色
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              },
            )
          ],
        ),
      ),
    );
//    return Column(
//      children: <Widget>[
//        Switch(
//
//          value: _switchSelected,
//          onChanged:(value){
//            setState(() {
//              _switchSelected=value;
//            });
//          },
//        ),
//      Checkbox(
//        value: _checkboxSelected,
//        //选择时颜色
//        activeColor: Colors.yellow,
//        onChanged: (value)
//        {
//          setState(() {
//            _checkboxSelected=value;
//          });
//        }
//        ,
//      )
//      ],
//    );
  }
}
