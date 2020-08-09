

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/**
 * 弹性布局
 */

class FlexExample  extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  new _FlexState();
  }


}
class  _FlexState extends State<FlexExample>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(

        title: new Text("弹性布局"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
//Flex的两个子widget按1：2来占据水平空间
          Flex(
            //水平
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child:Container(
                  height: 30,
                  color: Colors.red,
                ),
              )
              ,Expanded(
                flex: 3,
                child: Container(
                  height: 30,
                  color: Colors.green,
                ),
              )

            ],
          ),
            Padding(
              //向下对齐
              //向下移动20
              padding: const EdgeInsets.only(top: 10),
              child:
              SizedBox(
                height: 100.0,
                child: Flex(
                  //垂直对齐
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height:50,
                        color: Colors.red,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              ),
//              child:,
            )
          ],
        ),

      ),
    );
  }

}