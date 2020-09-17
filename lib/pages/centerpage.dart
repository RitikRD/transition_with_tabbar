import 'package:flutter/material.dart';
import 'package:test1/pages/swiperightpage.dart';

import 'swipeleftpage.dart';

class CenterPage extends StatelessWidget {
  final PageController pageController;

  const CenterPage({Key key, this.pageController}) : super(key: key);
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
            body: TabBarView(children: [
              Center(
                  child: GestureDetector(
                onTap: () {
                  pageController.animateToPage(0,
                      duration: Duration(microseconds: 150),
                      curve: Curves.easeIn);
                },
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffFDCF09),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/facebook.png'),
                  ),
                ),
              )),
              Center(
                  child: GestureDetector(
                onTap: () {
                  pageController.animateToPage(2,
                      duration: Duration(microseconds: 150),
                      curve: Curves.easeIn);
                },
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/google.png'),
                  ),
                ),
              )),
            ]),
          )),
    );
  }
}
