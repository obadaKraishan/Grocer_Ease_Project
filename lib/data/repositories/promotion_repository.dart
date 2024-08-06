import 'package:grocer_ease/data/models/promotion_model.dart';
import 'package:grocer_ease/services/promotion_service.dart';

class PromotionRepository {
  final PromotionService _promotionService = PromotionService();

  Future<void> createPromotion(PromotionModel promotion) async {
    await _promotionService.createPromotion(promotion);
  }

  Future<PromotionModel?> getPromotion(String promotionId) async {
    return await _promotionService.getPromotion(promotionId);
  }

  Future<void> updatePromotion(PromotionModel promotion) async {
    await _promotionService.updatePromotion(promotion);
  }

  Future<void> deletePromotion(String promotionId) async {
    await _promotionService.deletePromotion(promotionId);
  }

  Future<List<PromotionModel>> getAllPromotions() async {
    return await _promotionService.getAllPromotions();
  }
}
