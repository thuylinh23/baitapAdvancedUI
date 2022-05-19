import 'package:flutter/material.dart';

import 'gridview_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _controller;
  List<String> tabbar = ["Popular", "NowPlaying", "Up Coming", "Top Rate"];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    dynamic fontSize = TextStyle(fontSize: 18);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage("assets/images/bg-detail.png"),
        //         fit: BoxFit.cover,
        //         opacity: 0.3)),
        child: Column(
          children: <Widget>[
            TabBar(
              padding: EdgeInsets.all(10),
              controller: _controller,
              isScrollable: true,
              indicatorColor: Colors.black54,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              tabs: <Widget>[
                Text(tabbar[0], style: fontSize),
                Text(tabbar[1], style: fontSize),
                Text(tabbar[2], style: fontSize),
                Text(tabbar[3], style: fontSize),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: <Widget>[
                  GridViewWidget(),
                  GridViewWidget(),
                  GridViewWidget(),
                  GridViewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
