import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ozlemyildizmobil/sayfalar/gorevler.dart';
import 'package:ozlemyildizmobil/widgets/textfield.dart';
import 'package:ozlemyildizmobil/sayfalar/home.dart';

class Kaydol extends StatefulWidget {
  const Kaydol({Key? key}) : super(key: key);


  @override
  State<Kaydol> createState() => KaydolState();
}
class KaydolState extends State<Kaydol> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();


  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
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
                height: size.height * 0.52,
              ),

              SizedBox(height: size.height * 0.001),

              TextFieldInput(
                hintText: 'Kullanıcı adınızı oluşturun',
                textInputType: TextInputType.emailAddress,
                textEditingController: _usernameController,
              ),
              SizedBox(height: 24),

              TextFieldInput(
                hintText: 'Email adresinizi girin',
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController,
              ),

              SizedBox(height: 24),
              TextFieldInput(
                hintText: 'Şifrenizi girin',
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true,
              ),

              SizedBox(height: 24),
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