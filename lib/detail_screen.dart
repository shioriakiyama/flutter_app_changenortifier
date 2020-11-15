import 'package:flutter/material.dart';
import 'package:flutter_app_changenortifier/user/user_view_model.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('詳細ページ'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(user.userName),
              Text(user.userMail),
            ],
          ),
        ),
      ),
    );
  }
}
