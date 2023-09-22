import 'package:book_shop/core/errors/failure.dart';
import 'package:book_shop/core/utils/api_service/api_service.dart';
import 'package:book_shop/core/utils/helpers/result_helper.dart';
import 'package:book_shop/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';

import '../models/volume_model/book.dart';
import '../models/volume_model/volume_model.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl(this._apiService);
  @override
  Future<Result<List<Book>, Failure>> fetchNewBooks() async {
    try {
      final data = await _apiService.get(
        endPoint:
            '/volumes?Filtering=free-ebooks&Sorting=newest%20&q=subject%3Aprogramming',
      );
      final volume = VolumeModel.fromJson(data);
      List<Book> books = volume.items ?? [];
      return ResultSuccess(books);
    } on DioException catch (dioEx) {
      return ResultFailure(
        ServerFailure.fromDioException(dioEx),
      );
    } on Exception catch (e) {
      return ResultFailure(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Result<List<Book>, Failure>> fetchFeaturedBooks() async {
    try {
      final data = await _apiService.get(
        endPoint: '/volumes?Filtering=free-ebooks&q=subject%3Aprogramming',
      );
      final volume = VolumeModel.fromJson(data);
      final  books = volume.items ?? <Book>[];

      return ResultSuccess(books);
    } on DioException catch (dioEx) {
      return ResultFailure(
        ServerFailure.fromDioException(dioEx),
      );
    } on Exception catch (e) {
      return ResultFailure(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Result<List<Book>, Failure>> fetchSimillerBooks({
    required String category,
  }) async {
    try {
      final data = await _apiService.get(
        endPoint:
            '/volumes?Filtering=free-ebooks&q=subject%3Aprogramming&Sorting=relevance',
      );
      final volume = VolumeModel.fromJson(data);
      List<Book> books = volume.items ?? [];
      return ResultSuccess(books);
    } on DioException catch (dioEx) {
      return ResultFailure(
        ServerFailure.fromDioException(dioEx),
      );
    } on Exception catch (e) {
      return ResultFailure(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
