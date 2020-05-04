import 'package:flutter/material.dart';
import 'package:ungvideo/screens/show_list_video.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Field
  List<String> listImage = [
    'images/food1.png',
    'images/food2.png',
    'images/food3.png',
    'images/food4.png'
  ];

  // Method

  Widget mySizebox() {
    return SizedBox(
      width: 30.0,
      height: 30.0,
    );
  }

  Widget createCard(int index, String title) {
    return GestureDetector(onTap: ()=>routeToShowList(index),
          child: Card(
            child: Container(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    child: Image.asset(
                      listImage[index],
                    ),
                  ),
                  Text(title),
                ],
              ),
            ),
          ),
        );
      }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget>[
                mySizebox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createCard(0, 'อาหารภาคกลาง'),
                    mySizebox(),
                    createCard(1, 'อาหารภาคใต้'),
                  ],
                ),
                mySizebox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createCard(2, 'อาหารเหนือ'),
                    mySizebox(),
                    createCard(3, 'อาหารอีสาน'),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    
      routeToShowList(int index) {
        MaterialPageRoute route = MaterialPageRoute(builder: (value)=>ShowListVideo(index: index,));
        Navigator.push(context, route);
      }
}
