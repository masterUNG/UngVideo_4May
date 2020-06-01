import 'package:flutter/material.dart';

class ShowListVideo extends StatefulWidget {
  final int index;
  ShowListVideo({Key key, this.index}) : super(key: key);

  @override
  _ShowListVideoState createState() => _ShowListVideoState();
}

class _ShowListVideoState extends State<ShowListVideo> {

  // Field
  int index;
  List<String> titles = ['อาหารภาคกลาง', 'อาหารภาคใต้', 'อาหารภาคเหนือ', 'อาหารภาคอีสาน'];

  // Method
  @override
  void initState(){
    super.initState();
    index = widget.index;
    readData();
  }

  Future<Null> readData()async{

    

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titles[index]),),
    );
  }
}
