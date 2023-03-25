import 'package:flutter/material.dart';
import 'package:localdatabase/login/homelogin_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  SharedPreferences? sharedPreferences;

  TextEditingController textController=TextEditingController();
  TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80,left: 10,right: 10),
        child: Column(
          children: [
            TextField(
              controller: textController,
            ),
            SizedBox(height: 20,),
            TextField(
              controller: emailController,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async {
              sharedPreferences = await SharedPreferences.getInstance();
              sharedPreferences?.setString("name", textController.text.toString());
              sharedPreferences?.getString("name");
              sharedPreferences?.setString("email", emailController.text.toString());
              sharedPreferences?.getString("email");

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeLoginPage(),));

            }, child: Text("Login",style: TextStyle(fontSize: 25),))
          ],
        ),
      ),
    );
  }
}
