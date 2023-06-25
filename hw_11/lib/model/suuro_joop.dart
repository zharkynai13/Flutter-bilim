class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  final String text;
  final bool tuuraJoop;

  joop({required this.text, required this.tuuraJoop});
}

Suroo s1 = Suroo(
  text: "Paris",
  image: "Paris",
  jooptor: [
    joop(text: "germany", tuuraJoop: false),
    joop(text: "Paris", tuuraJoop: true),
    joop(text: "Prague", tuuraJoop: false),
    joop(text: "Rim", tuuraJoop: false)
  ],
);
Suroo s2 = Suroo(
  text: "GERMANY",
  image: "berlin",
  jooptor: [
    joop(text: "Berlin", tuuraJoop: true),
    joop(text: "Paris", tuuraJoop: false),
    joop(text: "Prague", tuuraJoop: false),
    joop(text: "Rim", tuuraJoop: false)
  ],
);
Suroo s3 = Suroo(
  text: "Italy",
  image: "rim",
  jooptor: [
    joop(text: "Berlin", tuuraJoop: false),
    joop(text: "Paris", tuuraJoop: false),
    joop(text: "Prague", tuuraJoop: false),
    joop(text: "Rim", tuuraJoop: true)
  ],
);

List<Suroo> surooJoopList = [
  s1,
  s2,
  s3,
];
