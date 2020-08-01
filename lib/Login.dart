import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  new _LoginStateFulWidget();
  }

}
class _LoginStateFulWidget extends State<Login>
{
  //获取用户名输入框内容
  TextEditingController _userNameController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  GlobalKey _formKey= new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:new AppBar(
        title:  new Text("登录页面"),

      ) ,
      body: new Center(

        child:Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: _userNameController,
              onChanged:(v){
//                print("ssssssssssssssss$v");
              },
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)
              ),
            ),
            TextField(
              controller: _passwordController,

              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",

                  prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                RaisedButton(
                  onPressed:(){

//                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
//                      return Login();
//                    }));
                  },
                  child:
                  Text("登录"),

                )
              ],
            )
          ],
        ),

      ),
    );
    throw UnimplementedError();
  }
  @override
  void initState() {
//    super.initState();
    _passwordController.text="123456";
    //赋初始值
  _userNameController.text="guoxuxiong";
    _userNameController.addListener(() {
      //获取EditText内容
      print(_userNameController.text);
    });
  }

}