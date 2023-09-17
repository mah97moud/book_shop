import 'package:book_shop/core/errors/failure.dart';
import 'package:book_shop/core/utils/api_service/api_service.dart';
import 'package:book_shop/core/utils/helpers/result_helper.dart';
import 'package:book_shop/features/home/data/models/book_model/book_model.dart';
import 'package:book_shop/features/search/data/repos/search_repo.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService _apiService;

  SearchRepoImpl({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<Result<List<BookModel>, Failure>> featchSearchBooks({
    required String searchText,
  }) async {
    try {
      final res = await _apiService.get(
        endPoint:
            '/volumes?Filtering=free-ebooks&Sorting=newest%20&subject=programming&q=$searchText%2Bsubject%3Aprogramming',
      );

      List<BookModel> books = [];
      books = (res['items'] as List).map((e) => BookModel.fromJson(e)).toList();
      return ResultSuccess(books);
    } catch (e) {
      return ResultFailure(ServerFailure.error(e));
    }
  }
}
