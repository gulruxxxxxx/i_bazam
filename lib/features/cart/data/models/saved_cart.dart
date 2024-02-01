import 'package:objectbox/objectbox.dart';

@Entity()
class SavedCart{
  @Id()
  int id;
  final String name;

  SavedCart({
    this.id = 0,
    required this.name});
}