import 'package:flutter/material.dart';
import 'package:hw_4_loginpage/components/text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Login Page", style: AppBarTextStyle.appBarText,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person_4,size: 115, color: Color.fromARGB(255, 128, 180, 206),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.lock_outline, size: 30,color: Colors.blueGrey,),
                Text("Accaount login", style: BodyTextStyle.bodyAccauntText,),
              ],
            ),
            const SizedBox(height: 30,),
             const Padding(
               padding:  EdgeInsets.symmetric(horizontal: 15),
               child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.all(Radius.circular(25)),
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 19,color: Colors.blueGrey),
                  hintText: "user@gmail.com"
                ),
                         ),
             ),
             const SizedBox(height: 30,),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child:  TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:
                   BorderRadius.all(Radius.circular(25)),
                   ),
                   labelText: "Password", 
                   labelStyle: TextStyle(fontSize: 19,color: Colors.blueGrey),
                   hintText: " 12345Zg&"
                ),
              ),
            ),
            const SizedBox(height: 25,),
            const Text("Forgot password", style: ForgotTextStyle.forgorTextStyle ,),
           const SizedBox(height: 30,),
            Container(
              width: 160, 
              height: 60,
              decoration: BoxDecoration(
                // color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(30)
              ),
              child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
                 primary: const Color.fromARGB(255, 115, 162, 185),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)
                )
                
              ),
               child: const Text("Log In", style: BtnStyle.btnStyle,)),
            )
          ],
        ),
      ),
    );
  }
}