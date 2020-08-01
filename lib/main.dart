import 'package:flutter/material.dart';
import 'package:flutterapp/ColumnExample.dart';
import 'package:flutterapp/Login.dart';
import 'package:flutterapp/LoginFormRoute.dart';
import 'package:flutterapp/SwitchAndCheckBoxTestRoute.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementSubCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            //Column：垂直方向 Row:水平方向
            new Column(
              children: <Widget>[
                RaisedButton(
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Login();
                    }));
                  },

//        tooltip: 'Increment',
                  child: Text("登录页面"),
                  textColor: Colors.green,
                  textTheme: ButtonTextTheme.primary,
                ),
                RaisedButton(
                  onPressed:(){

                    print("ssssssssssssss");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return SwitchAndCheckBoxTestRoute();
                    }));
                  },
                  child: Text("switch选择示例"),
                ),
                RaisedButton(
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return LoginFormRoute();
                    }));
                  },
                  child: Text("登录表单示例"),
                ),
                RaisedButton(
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return ColumnExample();
                    }));
                  },
                  child: Text("水平、垂直布局示例"),
                ),
                //进度条显示50%，会显示一个半圆

              ],
            ),
//            Image.network(
//              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
//
//            )
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
