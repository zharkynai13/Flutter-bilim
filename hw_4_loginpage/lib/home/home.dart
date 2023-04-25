import 'package:flutter/material.dart';
import 'package:hw_4_loginpage/components/text_styles.dart';
import 'package:hw_4_loginpage/home/user_page.dart';
import 'package:hw_4_loginpage/models/user_model.dart';


List users = <Users> [zharkynai, aibek,myrzaiym, baitur, meder];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _email;
  String? _password;

  void controlLogIn(String? email, String? password) {
    int index = 0;
    for(final user in users) {
      index++;
      if(email == user.email && password == user.password) {
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) =>   UserPage(user: users,))
             );
          break;
      } else if 
        (index == users.length) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("You data isn't correct!"),
          ),
        );
      }
      else {
        continue;
      }

    }
  }
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
              Padding(
               padding:  const EdgeInsets.symmetric(horizontal: 15),
               child: TextField(
                onChanged: (String? value) {
                  _email == value;
                  debugPrint("Value works: $value");
                },
                decoration: const InputDecoration(
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
             Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 15),
              child:  TextField(
                onChanged: (String? value) {
                 _password == value;
                 debugPrint("Value works: $value");

                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius:
                   BorderRadius.all(Radius.circular(25)),
                   ),
                   labelText: "Password", 
                   labelStyle: TextStyle(fontSize: 19,color: Colors.blueGrey),
                   hintText: " 12345678"
                ),
              ),
            ),

            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Forgot password", style: ForgotTextStyle.forgorTextStyle ,),
                SizedBox(width: 5,),
                Text("/", style: ForgotTextStyle.forgorTextStyle,),
                SizedBox(width: 5,),
                Text("Sign In", style: ForgotTextStyle.signInStyle,)
              ],
            ),

           const SizedBox(height: 30,),
           Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {
                controlLogIn(_email, _password);
                
              },
              child: const Text("Log In", style: TextStyle(
                fontSize: 18
              ),)
            ),
           )

            // Container(
            //   width: 160, 
            //   height: 60,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(30)
            //   ),
            //   child: ElevatedButton(onPressed: () {
            //         controlLogIn(_email, _password);
            //   },
            //   style: ElevatedButton.styleFrom(
            //     primary: const Color.fromARGB(255, 115, 162, 185),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(35)
            //     )
                
            //   ),
            //    child: const Text("Log In", style: BtnStyle.btnStyle,)),
            // )

          ],
        ),
      ),
    );
  }
}