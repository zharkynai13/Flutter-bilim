import 'package:dart_lessons/dart_lessons.dart' as dart_lessons;

// void main(List<String> arguments) {
//   print('Hello world: ${dart_lessons.calculate()}!');
// }

// this is main function LIST use only String type

// void main() {
//   List <String> names = ["Aibek", 'Marat','KAnykey','Askarali'];
//   names.add("baitur");
//   names.remove("Aibek");
//   print(names);
// }

// this main function use String and int types 

// void main1() {
//   List value =["Marat",30,'Aibek', 25, 45];
//   value.add('Ivan');
//   value.remove(45);
//   print(value);
// }


void main() {
  User userOne = User();
  print(userOne.name);
  userOne.Login();
}
class User {
  String name = 'Mario';
  int age = 25;

  void Login() {
    print("object"); 
  }
}
