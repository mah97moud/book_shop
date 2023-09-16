import 'package:book_shop/core/errors/failure.dart';
import 'package:book_shop/core/utils/api_service/api_service.dart';
import 'package:book_shop/core/utils/helpers/result_helper.dart';
import 'package:book_shop/features/home/data/models/book_model/book_model.dart';
import 'package:book_shop/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl(this._apiService);
  @override
  Future<Result<List<BookModel>, Failure>> fetchNewBooks() async {
    try {
      final data = await _apiService.get(
        endPoint:
            '/volumes?Filtering=free-ebooks&Sorting=newest%20&q=subject%3Aprogramming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return ResultSuccess(books);
    } on Exception {
      return ResultFailure(ServerFailure());
    }
  }

  @override
  Future<Result<List<BookModel>, Failure>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
