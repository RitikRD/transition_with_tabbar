import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'pages/centerpage.dart';
import 'pages/swipeleftpage.dart';
import 'pages/swiperightpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 1;
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: PageView(
          physics: ClampingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int page) => setState(
            () {
              _currentPage = page;
            },
          ),
          children: <Widget>[
            Left(),
            CenterPage(
              pageController: _pageController,
            ),
            Right(),
          ],
        ),
      ),
    );
  }
}

// Center(
//         child: Container(
//           child: Row(
//             children: <Widget>[
//               Expanded(
//                 child: SwipeDetector(
//                   child: Card(
//                     child: Container(
//                       padding: EdgeInsets.only(
//                         top: 400,
//                         bottom: 80.0,
//                         left: 16.0,
//                         right: 16.0,
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           Text(
//                             'Swipe Me!',
//                             style: TextStyle(
//                               fontSize: 40.0,
//                             ),
//                           ),
//                           ],
//                       ),
//                     ),
//                   ),

//                   onSwipeLeft: () {
//                     setState(() {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Left()));
//                     });
//                   },
//                   onSwipeRight: () {
//                     setState(() {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Right()));
//                     });
//                   },
//                   swipeConfiguration: SwipeConfiguration(
//                       verticalSwipeMinVelocity: 100.0,
//                       verticalSwipeMinDisplacement: 50.0,
//                       verticalSwipeMaxWidthThreshold:100.0,
//                       horizontalSwipeMaxHeightThreshold: 50.0,
//                       horizontalSwipeMinDisplacement:50.0,
//                       horizontalSwipeMinVelocity: 200.0),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
