import 'package:barang_hilang/contants.dart';
import 'package:barang_hilang/screens/member/screens/settings.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  final String username;
  Homepage({this.username});
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: kPrimaryColor,
          onPressed: () {},
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: Text("BarangHilang.com"),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: <Widget>[
          _index == 0
              ? Dashboard(context)
              : (_index == 1
                  ? Search(context)
                  : (_index == 2 ? Notifications(context) : Settings(context))),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 18,
              right: 18,
              bottom: MediaQuery.of(context).padding.bottom + 5,
            ),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _index == 0 ? kPrimaryColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: _index == 0 ? Colors.white : Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                            ),
                            child: Text(
                              _index == 0 ? "Home" : "",
                              style: TextStyle(
                                color:
                                    _index == 0 ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _index == 1 ? kPrimaryColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.message,
                            color: _index == 1 ? Colors.white : Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                            ),
                            child: Text(
                              _index == 1 ? "Message" : "",
                              style: TextStyle(
                                color:
                                    _index == 1 ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 2;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _index == 2 ? kPrimaryColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.notifications,
                            color: _index == 2 ? Colors.white : Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                            ),
                            child: Text(
                              _index == 2 ? "Notification" : "",
                              style: TextStyle(
                                color:
                                    _index == 2 ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 3;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _index == 3 ? kPrimaryColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.settings,
                            color: _index == 3 ? Colors.white : Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                            ),
                            child: Text(
                              _index == 3 ? "Settings" : "",
                              style: TextStyle(
                                color:
                                    _index == 3 ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Dashboard(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text("Home"),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Search(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text("Message"),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Notifications(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text("Notifications"),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Settings(BuildContext context) {
    return Expanded(
      child: SettingsPage(),
    );
  }
}
