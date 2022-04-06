import 'package:flutter/material.dart';
import 'package:ozlemyildizmobil/sayfalar/anasayfa.dart';
import 'package:ozlemyildizmobil/sayfalar/profil.dart';
import 'package:ozlemyildizmobil/sayfalar/gorevler.dart';
import 'package:ozlemyildizmobil/sayfalar/planlar.dart';
import 'package:ozlemyildizmobil/sayfalar/siralamalar.dart';
import 'package:ozlemyildizmobil/sayfalar/bildirimler.dart';


class Home extends StatefulWidget {
  Widget currentScreens = ProfileFavorite();
  Home(this.currentScreens);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties & Variables needed
  bool check = false;
  int currentTab = 0; // to keep track of active tab index
  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = ProfileFavorite();
  @override
  void initState() {
    setState(() {
      currentScreen = widget.currentScreens;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            check == true
                ? Icon(Icons.home)
                : Icon(Icons.person),
          ],
        ),
        onPressed: () {
          if (check == false) {
            setState(() {
              currentScreen =
                  Profile(); // if user taps on this dashboard tab will be active
              currentTab = 5;
              check = true;
            });
          } else {
            setState(() {
              currentScreen =
                  ProfileFavorite5(); // if user taps on this dashboard tab will be active
              currentTab = 5;
              check = false;
            });
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: screenWidth * 0.25,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            ProfileFavorite(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: currentTab == 0
                              ? Colors.black
                              : Color.fromRGBO(218, 218, 218, 1),
                        ),
                        Text(
                          'Görevler',
                          style: TextStyle(
                            color: currentTab == 0
                                ? Colors.black
                                : Color.fromRGBO(218, 218, 218, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.all(0),
                    minWidth: screenWidth * 0.2,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            ProfileFavorite2(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.check,
                          color: currentTab == 1
                              ? Colors.black
                              : Color.fromRGBO(218, 218, 218, 1),
                        ),
                        Text(
                          'Planlar',
                          style: TextStyle(
                            color: currentTab == 1
                                ? Colors.black
                                : Color.fromRGBO(218, 218, 218, 1),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: screenWidth * 0,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            ProfileFavorite3(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.sort,
                          color: currentTab == 2
                              ? Colors.black
                              : Color.fromRGBO(218, 218, 218, 1),
                        ),
                        Text(
                          'Sıralamalar',
                          style: TextStyle(
                            color: currentTab == 2
                                ? Colors.black
                                : Color.fromRGBO(218, 218, 218, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: screenWidth * 0,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            ProfileFavorite4(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          color: currentTab == 3
                              ? Colors.black
                              : Color.fromRGBO(218, 218, 218, 1),
                        ),
                        Text(
                          'Ayarlar',
                          style: TextStyle(
                            color: currentTab == 3
                                ? Colors.black
                                : Color.fromRGBO(218, 218, 218, 1),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}