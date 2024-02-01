import 'package:hive/hive.dart';
import 'package:i_baza/features/authentication/data/models/authenticated_user.dart';

void registerAdapters(){
  Hive.registerAdapter(AuthenticatedUserModelAdapter());
}