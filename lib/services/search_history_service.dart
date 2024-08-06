import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocer_ease/data/models/search_history_model.dart';

class SearchHistoryService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createSearchHistory(SearchHistoryModel searchHistory) async {
    await _firestore.collection('search_history').doc(searchHistory.id).set(searchHistory.toMap());
  }

  Future<SearchHistoryModel?> getSearchHistory(String searchHistoryId) async {
    DocumentSnapshot doc = await _firestore.collection('search_history').doc(searchHistoryId).get();
    if (doc.exists) {
      return SearchHistoryModel.fromDocument(doc);
    }
    return null;
  }

  Future<void> updateSearchHistory(SearchHistoryModel searchHistory) async {
    await _firestore.collection('search_history').doc(searchHistory.id).update(searchHistory.toMap());
  }

  Future<void> deleteSearchHistory(String searchHistoryId) async {
    await _firestore.collection('search_history').doc(searchHistoryId).delete();
  }

  Future<List<SearchHistoryModel>> getAllSearchHistoriesForUser(String userId) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection('search_history')
        .where('user_id', isEqualTo: userId)
        .get();
    return querySnapshot.docs
        .map((doc) => SearchHistoryModel.fromDocument(doc))
        .toList();
  }
}
