import 'package:flutter/material.dart';
import 'package:ungvideo/screens/signin_page.dart';
import 'package:ungvideo/screens/signup_page.dart';

class Guest extends StatefulWidget {
  @override
  _GuestState createState() => _GuestState();
}

class _GuestState extends State<Guest> {
  void routeToSign(Widget widget) {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => widget,
    );
    Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('สวัสดี'),
                accountEmail: Text('ยินดีต้อนรับ')),
            signInMenu(),
            signUpMenu(),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Guest'),
      ),
    );
  }

  ListTile signInMenu() => ListTile(
        leading: Icon(Icons.fingerprint),
        title: Text('ลงชื่อเข้าใช้งาน'),
        onTap: () {
          Navigator.pop(context);
          routeToSign(SignInPage());
        },
      );

  ListTile signUpMenu() => ListTile(
        leading: Icon(Icons.account_box),
        title: Text('สมัครสมาชิก'),
        onTap: () {
          Navigator.pop(context);
          routeToSign(SignUpPage());
        },
      );
}
