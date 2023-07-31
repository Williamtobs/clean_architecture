import 'package:dio/dio.dart';

import '../../domain/models/articles.dart';

class ArticleState {
  final List<Articles> articles;
  final DioException? error;
  final bool noMoreData;

  const ArticleState(
      {this.articles = const [], this.error, this.noMoreData = true});

  ArticleState copyWith({
    List<Articles>? articles,
    DioException? error,
    bool? noMoreData,
  }) {
    return ArticleState(
      articles: articles ?? this.articles,
      error: error ?? this.error,
      noMoreData: noMoreData ?? this.noMoreData,
    );
  }
}
