import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  List<String> typeUsers = ['User', 'Shop', 'Rider'];
  List<String> typeUserTHs = ['ผู้ซื้อ', 'ร้านค้า', 'ผู้ส่ง'];
  List<int> indexs = [0, 1, 2];
  int index;
  String typeUser, typeUserTH;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สมัครสมาชิก'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            nameForm(),
            chooseTypeUser(),
            emailForm(),
            passwordForm(),
            phoneForm(),
            showMap(),
          ],
        ),
      ),
    );
  }

  Container showMap() {
    LatLng latLng = LatLng(13.696385, 100.656924);
    CameraPosition cameraPosition = CameraPosition(
      target: latLng,
      zoom: 16.0,
    );

    return Container(
      height: 300.0,
      child: GoogleMap(
        initialCameraPosition: cameraPosition,onMapCreated: (controller) {},
      ),
    );
  }

  Container chooseTypeUser() => Container(
        child: DropdownButton<int>(
          value: index,
          items: indexs
              .map(
                (e) => DropdownMenuItem(
                  child: Text(typeUserTHs[e]),
                  value: e,
                ),
              )
              .toList(),
          hint: Text('โปรดเลือก ชนิดผู้ใช้งาน'),
          onChanged: (value) {
            typeUser = typeUsers[value];
            print('typeUser = $typeUser');
            setState(() {
              index = value;
            });
          },
        ),
      );

  Widget nameForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'ชื่อ :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget emailForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'อีเมล์ :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget passwordForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'รหัส :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget phoneForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'หมายเลขโทรศัพย์ :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );
}
