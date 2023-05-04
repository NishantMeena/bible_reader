import 'dart:convert';
import 'package:bible_reading/screens/main/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardScreen();
  }
}

class DashboardScreen extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Those property
  // panelSnapping: false,
  // backdropEnabled: true,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          Visibility(
            visible: HomePageState.showAppBar,
            child: slideUpPanelView(),
          )
        ],
      ),
    );
  }

  Widget slideUpPanelView() {
    return SlidingUpPanel(
      panelSnapping: false,
      maxHeight: MediaQuery.of(context).size.height * 0.9,
      minHeight: 35,
      isDraggable: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5),
        topRight: Radius.circular(5),
      ),
      color: Colors.transparent,
      panel: Container(
        color: Colors.green.shade100,
        child: Column(
          children: [
            Center(child: BarIndicator()),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Open')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Title',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.double_arrow, color: Colors.green),
                          ),
                        )
                      ],
                    ),
                    color: Colors.green.shade300,
                  ),
                  Column(children: [
                    Container(
                      child: Text("data"),
                    ),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
      onPanelSlide: (double position) => setState(() {
        print('POSITION :- ${position}');
      }),
    );
  }
}

class BarIndicator extends StatelessWidget {
  const BarIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          )
        ],
      ),
    );
  }
}

//  Center(
//             child: CupertinoButton(
//               color: Colors.blue,
//               onPressed: () async {
//                 String androidBookPath =
//                     'asset/epub/alice.epub';
//                 EpubKitty.setConfig(
//                   identifier: "iosBook",
//                   themeColor: Color(0xff32a852),
//                   scrollDirection: EKScrollDirection.horizontal,
//                   allowSharing: true,
//                   shouldHideNavigationOnTap: false,
//                 );
//
//                 EpubKitty.open(androidBookPath);
//               },
//               child: Text('Open Epub',
//                   style: TextStyle(
//                     color: Colors.white,
//                   )),
//             ),
//           ),