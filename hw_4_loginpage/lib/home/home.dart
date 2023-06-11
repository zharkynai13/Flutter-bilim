import 'package:flutter/material.dart';
import 'package:hw_4_loginpage/components/text_styles.dart';
import 'package:hw_4_loginpage/home/user_page.dart';
import 'package:hw_4_loginpage/models/user_model.dart';


final studentter = <Student> [zharkynai, aibek,myrzaiym, baitur, meder];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _email;

  void controlLogIn(String? name, String? email) {
    int index = 0;
    for(final student in studentter) {
      index++;
      if(name == student.name && email == student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) =>   UserPage(student: student, user: zharkynai,))
             );
          break;
      } else {
        if (index == studentter.length) {
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
            const Icon(Icons.person_4,
            size: 115, color: Color.fromARGB(255, 128, 180, 206),
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
                  _name == value;
                  debugPrint("Value works: $value");
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius: 
                  BorderRadius.all(Radius.circular(25)),
                  ),
                  labelText: "Name",
                  labelStyle: TextStyle(fontSize: 19,color: Colors.blueGrey),
                  hintText: "Zharkynai"
                ),
                         ),
             ),

             const SizedBox(height: 30,),
             Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 15),
              child:  TextField(
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
                   hintText: " zharkynai.zhanybek@gmail.com"
                ),
              ),
            ),

            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Forgot password", style: ForgotTextStyle.forgotTextStyle ,),
                SizedBox(width: 5,),
                Text("/", style: ForgotTextStyle.forgotTextStyle,),
                SizedBox(width: 5,),
                Text("Sign In", style: ForgotTextStyle.signInStyle,)
              ],
            ),

           const SizedBox(height: 30,),
            Container(
              width: 160, 
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)
              ),
              child: ElevatedButton(onPressed: () {
                    controlLogIn(_email, _name);
              },
              style: ElevatedButton.styleFrom(
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