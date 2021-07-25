import 'package:crowdset/lockedpack.dart';
import 'package:crowdset/pack.dart';
import 'package:flutter/material.dart';

import 'swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Spacer(flex: 4),
                    IconButton(
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      icon: Icon(
                        Icons.list_rounded,
                        size: 35.0,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Pack(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: LockedPack(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: LockedPack(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: LockedPack(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: LockedPack(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: LockedPack(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Container(
        width: 330,
        height: 700,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 75,
                child: Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                color: Colors.blue,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Redeem Points",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Visit our Data Marketplace",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Fuck Off",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Swipe extends StatefulWidget {
  const Swipe({ Key? key }) : super(key: key);

  @override
  _SwipeState createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: SwipeWidget(),
        ),
      ),
    );
  }
}
