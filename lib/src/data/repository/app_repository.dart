
import 'package:udemy_clone/src/data/entity/search_model.dart';

abstract class AppRepository {
  /// crud

  Future<SearchModel?> search();
  Future<void> images();
  Future<void> videos();

}
