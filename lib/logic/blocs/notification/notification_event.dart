import 'package:equatable/equatable.dart';
import 'package:grocer_ease/data/models/notification_model.dart';

abstract class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List<Object> get props => [];
}

class LoadNotifications extends NotificationEvent {
  final String userId;

  LoadNotifications(this.userId);

  @override
  List<Object> get props => [userId];
}

class MarkNotificationAsRead extends NotificationEvent {
  final String notificationId;

  MarkNotificationAsRead(this.notificationId);

  @override
  List<Object> get props => [notificationId];
}
