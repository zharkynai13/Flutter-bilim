class Country {
   Country({required this.name, required this.domain});
  final String name;
  final String domain; 
}

Country oae = Country(name:"OAE", domain: "ae");
Country arabia = Country(name:"Arabia", domain: "ar");
Country france = Country(name:"France", domain: "fr");
Country russia = Country(name:"Russia", domain: "ru");
Country poland = Country(name:"Poland", domain: "pl");
Country korea = Country(name:"Korea", domain: "kr");

Set<Country> countrySet = {
  oae,arabia,france,russia,poland,korea

};