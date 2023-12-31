import 'package:hive/hive.dart';

part 'note_modle.g.dart';

@HiveType(typeId: 0)

class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final int color;
  @HiveField(3)
  final String date;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.color,
      required this.date});
}
