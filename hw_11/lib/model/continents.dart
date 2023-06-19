import 'package:flutter/material.dart';

class Continents {
  Continents({required this.colors, required this.name, required this.image});
  final String name;
  final String image;
  final Color colors;
}

Continents asia = Continents(name: "Asia", image: "asia", colors: Colors.pink);
Continents europa =
    Continents(name: "Europa", image: "europa", colors: Colors.green);
Continents africa =
    Continents(name: "Africa", image: "africa", colors: Colors.brown);
Continents australia =
    Continents(name: "Australia", image: "australia", colors: Colors.blue);
Continents southAmerica = Continents(
    name: "South America",
    image: "south-america",
    colors: const Color.fromARGB(255, 6, 83, 9));
Continents northAmerica = Continents(
    name: "North America",
    image: "north-america",
    colors: Color.fromARGB(255, 100, 211, 103));

List<Continents> continentsList = [
  asia,
  europa,
  africa,
  australia,
  southAmerica,
  northAmerica
];
