import 'package:flutter/material.dart';
import 'package:flutter_app_changenortifier/user/user_view_model.dart';
import 'package:provider/provider.dart';
import 'detail_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('メインページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.userName),
            Text(user.userMail),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (String inputName) {
                  user.changeNameText(inputName);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (String inputMail) {
                  user.changeMailText(inputMail);
                },
              ),
            ),
            RaisedButton(
              child: Text('詳細画面へ'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
