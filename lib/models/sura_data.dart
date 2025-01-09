class SuraDetails {
  final String nameEN;
  final String nameAR;
  final int verses;
  final int id;

  SuraDetails({
    required this.nameEN,
    required this.nameAR,
    required this.verses,
    required this.id,
  });

  @override
  String toString() {
    return 'Sura(id: $id, nameEN: $nameEN, nameAR: $nameAR, verses: $verses)';
  }
}
