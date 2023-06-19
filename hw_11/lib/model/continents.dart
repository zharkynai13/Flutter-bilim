class Continents {
  Continents({required this.name, required this.image});
  final String name;
  final String image;
}

Continents asia = Continents(name: "Asia", image: "asia");
Continents europa = Continents(name: "Europa", image: "europa");
Continents africa = Continents(name: "Africa", image: "africa");
Continents australia = Continents(name: "Australia", image: "australia");
Continents southAmerica =
    Continents(name: "South America", image: "south-america");
Continents northAmerica =
    Continents(name: "North America", image: "north-america");

List<Continents> continentsList = [
  asia,
  europa,
  africa,
  australia,
  southAmerica,
  northAmerica
];
