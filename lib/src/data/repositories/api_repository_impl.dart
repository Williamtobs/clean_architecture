import '../../domain/models/requests/breaking_news_request.dart';
import '../../domain/models/responses/breaking_news_reponse.dart';
import '../../domain/repositories/api_repositories.dart';
import '../../utils/resources/data_state.dart';
import '../base/base_api_repositories.dart';
import '../datasources/remote/news_api_service.dart';

class ApiRepositoryImpl extends BaseApiRepositories implements ApiRepositories {
  final NewsApiService _newsApiService;

  ApiRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles({
    required BreakingNewsRequest request,
  }) {
    return getStateOf<BreakingNewsResponse>(
      request: () => _newsApiService.getBreakingNews(
        page: request.page,
        pageSize: request.pageSize,
        apiKey: request.apiKey,
        country: request.country,
        category: request.category,
      ),
    );
  }
}
