class Source {
  final String id;
  final String name;

  Source({
    required this.id, 
    required this.name})
    ;
    factory Source.fromJson(Map<String, dynamic>json) => 
    Source(
      id: json["id"] ??'',  // null алып келе алат 
     name: json['name'] ??'', ); // null алып келе алат 
}