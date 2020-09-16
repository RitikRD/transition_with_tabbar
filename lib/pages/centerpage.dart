import 'package:flutter/material.dart';
import 'package:test1/pages/swiperightpage.dart';

import 'swipeleftpage.dart';

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          // set initial index to 1
          initialIndex: 1,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Tab Bar"),
              bottom:
              TabBar(tabs: [Tab(child: Text('B')), Tab(child: Text('A'))]),
            ),
            body: TabBarView(

                children: [

              Center(
                child:GestureDetector(
                  onTap: () {
          Navigator.push(
          context, MaterialPageRoute(builder: (context) => Left()));
          },
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/facebook.png'),
                    ),
                  ),
                )
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Right()));
                  },
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/google.png'),
                    ),
                  ),
                )
              ),
            ]),
          )),
    );
  }
}
