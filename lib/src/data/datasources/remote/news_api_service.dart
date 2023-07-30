import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/models/responses/breaking_news_reponse.dart';
import '../../../utils/constant/app_strings.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsApiUrl, parser: Parser.MapSerializable)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponse>> getBreakingNews({
    @Query('page') int? page,
    @Query('pageSize') int? pageSize,
    @Query('apiKey') String? apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
  });
}
