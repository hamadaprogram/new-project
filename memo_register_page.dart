import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class MemoRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('メモ投稿画面'),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: _screenSize.width * 0.85,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "title",

                      ),
                    ),
                  ),
                ],
              )
          ),
          SizedBox(height: 30,),
          //ここまで子0
          Container(
              width: double.infinity,
              child: Column(
/*                crossAxisAlignment: CrossAxisAlignment.start,*/
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "覚えるべきポイント",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        )),
                  ),
                  Container(
                    width: _screenSize.width * 0.85,
                    child: TextField(
                      decoration: InputDecoration(),
                      maxLines: 2,
                    ),
                  ),
                ],
              )
          ),
          SizedBox(height: 30,),
          //ここまで子1
          Container(
              width: double.infinity,
              child: Column(
/*                crossAxisAlignment: CrossAxisAlignment.start,*/
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "覚え方",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        )),
                    ),
                  Container(
                    width: _screenSize.width * 0.85,
                    child: TextField(
                      decoration: InputDecoration(),
                      maxLines: 2,
                    ),
                  ),
                ],
              )
          ),
          SizedBox(height: 30,),
          //ここまで子2
          Container(
              width: double.infinity,
              child: Column(
/*                crossAxisAlignment: CrossAxisAlignment.start,*/
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "ここは注意!!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        )),
                  ),
                  Container(
                    width: _screenSize.width * 0.85,
                    child: TextField(
                      decoration: InputDecoration(),
                      maxLines: 2,
                    ),
                  ),
                ],
              )
          ),
          SizedBox(height: 50,),
          //ここまで子3
          RaisedButton(
              child: Text("Register"),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()));
              }
          ),
        ],
      )
/*      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
                "覚えるべきポイント",
            style: TextStyle(
            fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
        )),
            TextField(
              decoration: InputDecoration(
                hintText: "内容",
              ),
            ),
            TextField(
            ),
            RaisedButton(
                child: Text("register"),
                onPressed: () {

                },
            ),
          ],
        ),
        ddd

      ),*/

    );
  }
}