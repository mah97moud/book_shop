import 'package:book_shop/core/utils/helpers/result_helper.dart';
import 'package:book_shop/features/home/data/models/volume_model/book.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Result<List<Book>, Failure>> fetchNewBooks();
  Future<Result<List<Book>, Failure>> fetchFeaturedBooks();
  Future<Result<List<Book>, Failure>> fetchSimillerBooks({
    required String category,
  });
}
