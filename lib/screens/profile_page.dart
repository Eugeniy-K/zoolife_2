import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const route = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                // Navigator.of(context, rootNavigator: false).pushNamed(PushedScreen.route);
              },
              child: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
