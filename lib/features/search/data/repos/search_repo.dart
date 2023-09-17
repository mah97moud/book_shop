import 'package:book_shop/features/home/data/models/book_model/book_model.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/helpers/result_helper.dart';

abstract class SearchRepo {
  Future<Result<List<BookModel>,Failure>> featchSearchBooks({required String searchText});
}
