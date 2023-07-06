// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';



// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Add code to check if user is already authenticated
//     // If authenticated, navigate to HomePage
//     // If not authenticated, navigate to LoginScreen
//     return Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final User? user;
//   HomePage({required this.user});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Car Sales'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () {
//               // Add code to handle logout
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 20),
//           Text('Добро пожаловать, ${user?.email ?? ""}'),
//           SizedBox(height: 20),
//           CarSearchFilter(),
//           Expanded(child: CarList()),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           // Add code to navigate to AddCarScreen
//         },
//       ),
//     );
//   }
// }

// class CarSearchFilter extends StatefulWidget {
//   @override
//   _CarSearchFilterState createState() => _CarSearchFilterState();
// }

// class _CarSearchFilterState extends State<CarSearchFilter> {
//   String? selectedBrand;
//   String? selectedModel;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         DropdownButton<String>(
//           value: selectedBrand,
//           hint: Text('Марка'),
//           items: ['Toyota', 'Honda', 'Ford']
//               .map((brand) => DropdownMenuItem<String>(
//                     value: brand,
//                     child: Text(brand),
//                   ))
//               .toList(),
//           onChanged: (value) {
//             setState(() {
//               selectedBrand = value;
//             });
//           },
//         ),
//         SizedBox(width: 10),
//         DropdownButton<String>(
//           value: selectedModel,
//           hint: Text('Модель'),
//           items: ['Corolla', 'Civic', 'Mustang']
//               .map((model) => DropdownMenuItem<String>(
//                     value: model,
//                     child: Text(model),
//                   ))
//               .toList(),
//           onChanged: (value) {
//             setState(() {
//               selectedModel = value;
//             });
//           },
//         ),
//         SizedBox(width: 10),
//         ElevatedButton(
//           child: Text('Поиск'),
//           onPressed: () {
//             // Add code to perform search with selectedBrand and selectedModel
//           },
//         ),
//       ],
//     );
//   }
// }

// class CarList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance.collection('машины').snapshots(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData
