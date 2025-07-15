class ReciterEntity {
  int? id;
  String? name;

  List<String> moshaf;

  ReciterEntity({this.id, this.name, this.moshaf = const []});
}
