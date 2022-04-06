import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileFavorite5 extends StatefulWidget {
  const ProfileFavorite5({Key? key}) : super(key: key);

  @override
  State<ProfileFavorite5> createState() => ProfileFavorite5State();
}

class ProfileFavorite5State extends State<ProfileFavorite5> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.black,
              ),
              SizedBox(
                height: 30,
              ),
              Text("Anasayfa"),
            ]),
      ),
    );
  }
}