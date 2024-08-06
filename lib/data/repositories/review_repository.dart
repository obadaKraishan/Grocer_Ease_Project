import 'package:grocer_ease/data/models/review_model.dart';
import 'package:grocer_ease/services/review_service.dart';

class ReviewRepository {
  final ReviewService _reviewService = ReviewService();

  Future<void> createReview(ReviewModel review) async {
    await _reviewService.createReview(review);
  }

  Future<ReviewModel?> getReview(String reviewId) async {
    return await _reviewService.getReview(reviewId);
  }

  Future<void> updateReview(ReviewModel review) async {
    await _reviewService.updateReview(review);
  }

  Future<void> deleteReview(String reviewId) async {
    await _reviewService.deleteReview(reviewId);
  }

  Future<List<ReviewModel>> getAllReviewsForProduct(String productId) async {
    return await _reviewService.getAllReviewsForProduct(productId);
  }
}
