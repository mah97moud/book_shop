import 'package:book_shop/core/utils/dio_factory.dart';
import 'package:book_shop/features/home/data/repos/home_repo.dart';
import 'package:book_shop/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

import '../../features/search/data/repos/search_repo.dart';
import '../../features/search/data/repos/search_repo_impl.dart';
import 'api_service/api_service.dart';

final getIt = GetIt.instance..allowReassignment = true;

Future<void> setupServiceLocator() async {
  getIt.registerLazySingleton<DioFactory>(
    () => DioFactory(),
  );

  final dio = await DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(
    () => ApiService(
      dio,
    ),
  );

  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  
  getIt.registerLazySingleton<SearchRepo>(
    () => SearchRepoImpl(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
