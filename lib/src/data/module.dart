import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

import '../domain/repositories/api_repositories.dart';
import 'datasources/remote/news_api_service.dart';
import 'repositories/api_repository_impl.dart';

final newsApiServiceProvider = Provider<NewsApiService>((ref) {
  return NewsApiService(Dio());
});

final apiProvider = Provider<ApiRepositories>((ref) {
  return ApiRepositoryImpl(ref.read(newsApiServiceProvider));
});
