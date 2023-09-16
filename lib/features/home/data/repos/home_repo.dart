import 'package:book_shop/core/utils/helpers/result_helper.dart';

import '../../../../core/errors/failure.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Result<List<BookModel>, Failure>> fetchBestSellerBooks();
  Future<Result<List<BookModel>, Failure>> fetchFeaturedBooks();
}
