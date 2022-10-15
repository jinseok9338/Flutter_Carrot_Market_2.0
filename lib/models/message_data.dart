import 'package:meta/meta.dart';


@immutable
class MessageData {
  const MessageData({
    required this.senderName,
    required this.message,
    required this.messageDate,
    required this.dateMessage,
    required this.profilePicture,
  });
  final String senderName;
  final String message;
  final dynamic messageDate;
  final String dateMessage;
  final String profilePicture;
}