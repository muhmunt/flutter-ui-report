import 'package:flutter/material.dart';
import 'package:kbm_management/ui/draft_page.dart';
import 'package:kbm_management/ui/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraftPage(
      backgroundColor: Colors.pink,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("0",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage() ));
                },
                child: Text("Click to change"),
                color: Colors.pink,
                shape: StadiumBorder(),
              )
            ],
          ),
        ),
    );
  }
}