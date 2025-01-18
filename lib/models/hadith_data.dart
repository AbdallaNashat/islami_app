class HadithData {
  final String nameAR;
  final int id;

  HadithData({
    required this.nameAR,
    required this.id,
  });

  @override
  String toString() {
    return 'Hadith(id: $id,  nameAR: $nameAR, )';
  }
}
