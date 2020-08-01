import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFormRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginStateFulWidget();
  }
}

class _LoginStateFulWidget extends State<LoginFormRoute> {
  //获取用户名输入框内容
  TextEditingController _userNameController = TextEditingController();

  //获取密码输入框内容
  TextEditingController _passwordController = TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: new Text("登录页面"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Form(
            key: _formKey, //设置globalKey，用于后面获取FormState
            autovalidate: true, //开启自动校验
            child: Column(
              children: <Widget>[
                TextFormField(
                  //自动获取焦点
                  autofocus: true,
                  controller: _userNameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "请输入用户名或邮箱",
                      icon: Icon(Icons.person)),
                  //用户校验
                  validator: (v) {
                    return v.trim().length > 0 ? null : '用户名不能为空';
                  },
                ),
                TextFormField(
                    controller: _passwordController,
                    enabled: true,
                    decoration: InputDecoration(
                        labelText: "密码",
                        hintText: "您的登录密码",
                        icon: Icon(Icons.lock)),
                    obscureText: true,
                    //校验密码
                    validator: (v) {
                      return v.trim().length > 5 ? null : "密码不能少于6位";
                    }),
                Padding(
                  //向下下移
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    children: <Widget>[
                      //四周对齐
                      Expanded(
                        child: RaisedButton(
                          padding: EdgeInsets.all(15.0),
                          child: Text("登录"),
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {
                            if ((_formKey.currentState as FormState)
                                .validate()) {
                              //验证通过提交数据，获取输入框内容
                              print("用户名:" +
                                  _userNameController.text +
                                  "密码:" +
                                  _passwordController.text);
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child:
                          SizedBox(
                            height: 10,
                            width: 10.0,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.grey[200],
                              valueColor: AlwaysStoppedAnimation(Colors.blue),
                              value: .2,
                            ),
                          )


                      )

                    ],
                  )
                  ,
                )
              ],
            ),
          ),
        ));
    throw UnimplementedError();
  }

  @override
  void initState() {
//    super.initState();
    _passwordController.text = "123456";
    //赋初始值
    _userNameController.text = "guoxuxiong";
//    _userNameController.addListener(() {
//      //获取EditText内容
//      print(_userNameController.text);
//    });
  }
}
