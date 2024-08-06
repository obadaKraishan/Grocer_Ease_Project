import 'package:grocer_ease/data/models/search_history_model.dart';
import 'package:grocer_ease/services/search_history_service.dart';

class SearchHistoryRepository {
  final SearchHistoryService _searchHistoryService = SearchHistoryService();

  Future<void> createSearchHistory(SearchHistoryModel searchHistory) async {
    await _searchHistoryService.createSearchHistory(searchHistory);
  }

  Future<SearchHistoryModel?> getSearchHistory(String searchHistoryId) async {
    return await _searchHistoryService.getSearchHistory(searchHistoryId);
  }

  Future<void> updateSearchHistory(SearchHistoryModel searchHistory) async {
    await _searchHistoryService.updateSearchHistory(searchHistory);
  }

  Future<void> deleteSearchHistory(String searchHistoryId) async {
    await _searchHistoryService.deleteSearchHistory(searchHistoryId);
  }

  Future<List<SearchHistoryModel>> getAllSearchHistoriesForUser(String userId) async {
    return await _searchHistoryService.getAllSearchHistoriesForUser(userId);
  }
}
