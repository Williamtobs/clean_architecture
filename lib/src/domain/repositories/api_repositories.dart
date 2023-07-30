import '../../utils/resources/data_state.dart';
import '../models/requests/breaking_news_request.dart';
import '../models/responses/breaking_news_reponse.dart';

abstract class ApiRepositories {
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles({
    required BreakingNewsRequest request,
  });
}
