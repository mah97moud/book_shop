import '../../../../core/errors/failure.dart';
import '../../../../core/utils/helpers/result_helper.dart';
import '../../../home/data/models/volume_model/book.dart';

abstract class SearchRepo {
  Future<Result<List<Book>, Failure>> featchSearchBooks(
      {required String searchText});
}
