import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'promotion_event.dart';
part 'promotion_state.dart';

class PromotionBloc extends Bloc<PromotionEvent, PromotionState> {
  PromotionBloc() : super(PromotionInitial()) {
    on<PromotionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
