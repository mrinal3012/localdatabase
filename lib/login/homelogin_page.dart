import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeLoginPage extends StatefulWidget {
  const HomeLoginPage({Key? key}) : super(key: key);

  @override
  State<HomeLoginPage> createState() => _HomeLoginPageState();
}

class _HomeLoginPageState extends State<HomeLoginPage> {


  SharedPreferences ? sharedPreferences;
  String ? nameValue;
  String ? emailValue;

  getSaveData()async{
    sharedPreferences =await SharedPreferences.getInstance();
    nameValue=sharedPreferences!.getString("name");
    emailValue=sharedPreferences!.getString("email");
    setState(() {

    });
  }

  @override
  void initState() {
    getSaveData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          children: [
            Text("$nameValue"),
            SizedBox(height: 20,),
            Text("$emailValue")
          ],
        ),
      ),

    );
  }
}
