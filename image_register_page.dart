import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class ImageRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    int count = 0;

    return Scaffold(
        appBar: AppBar(
          title: Text('画像投稿画面'),
        ),
        body: Column(
          children: [
            Container(
                width: double.infinity,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: _screenSize.width * 0.85,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "title"
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
                          "投稿内容",
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

/*            Image.asset("images/note.png"),
            RaisedButton(
                child: Text("Register"),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                }
            ),*/
          ImageBox(count),

          ],
        )


    );
  }
  Widget ImageBox (int count) {
    if (count % 2 == 0) {
      return SizedBox(
          height: 50,
          width: 50);
    } else {
      return Image.asset("images/note.png");
    }
  }
}