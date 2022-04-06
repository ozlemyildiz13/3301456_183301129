import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ozlemyildizmobil/sayfalar/gorevler.dart';
import 'package:ozlemyildizmobil/widgets/textfield.dart';
import 'package:ozlemyildizmobil/giris/kaydol.dart';
import 'package:ozlemyildizmobil/sayfalar/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '183301129-Mobil Programlama'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(

        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('resim/s.jpg'),
                  height: size.height * 0.55,
                ),
                SizedBox(height: size.height * 0.001),
                TextFieldInput(
                  hintText: 'Email adresinizi girin',
                  textInputType: TextInputType.emailAddress,
                  textEditingController: _emailController,
                ),
                SizedBox(height: 14),

                TextFieldInput(
                  hintText: 'Şifrenizi girin',
                  textInputType: TextInputType.text,
                  textEditingController: _passwordController,
                  isPass: true,
                ),

                SizedBox(height: 4),

                InkWell(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width*0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home(ProfileFavorite())),
                          );
                        },
                        child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 40),
                          child: Text(
                          "Giriş Yap",
                            style: TextStyle(
                            color: Colors.white,
                      ),
                        )
                          ),
                        ),

                      ),
                    ),
                  ),
                SizedBox(height: 4),

                InkWell(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width*0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: ElevatedButton(
                        onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Kaydol()),
                            );
                        },
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: Text(
                              "Kaydol",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                        ),
                      ),

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