import 'package:flutter/material.dart';
import 'package:hw_4_loginpage/models/user_model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.user, required Student student,});
  final Student user;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("User Page", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
          Text(user.id.toString()),
          Text(user.email.toString()),
          Text(user.phoneNumber.toString()),
          Text(user.age.toString()),
          Text(user.name.toString()),
        ],
      ),
    );
  }
}