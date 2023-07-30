import '../../../utils/constant/app_strings.dart';
import '../../../utils/constant/num.dart';

class BreakingNewsRequest {
  final int page;
  final int pageSize;
  final String apiKey;
  final String country;
  final String category;

  BreakingNewsRequest(
      {this.page = 1,
      this.pageSize = defaultPageSize,
      this.apiKey = newsApiKey,
      this.country = 'us',
      this.category = 'general'});
}
