import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileFavorite4 extends StatefulWidget {
  const ProfileFavorite4({Key? key}) : super(key: key);

  @override
  State<ProfileFavorite4> createState() => ProfileFavorite4State();
}

class ProfileFavorite4State extends State<ProfileFavorite4> {
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
              Text("Ayarlar"),
            ]),
      ),
    );
  }
}