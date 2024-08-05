import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'support_ticket_event.dart';
part 'support_ticket_state.dart';

class SupportTicketBloc extends Bloc<SupportTicketEvent, SupportTicketState> {
  SupportTicketBloc() : super(SupportTicketInitial()) {
    on<SupportTicketEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
