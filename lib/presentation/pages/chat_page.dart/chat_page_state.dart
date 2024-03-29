import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'chat_page_state.freezed.dart';

@freezed
class ChatPageState with _$ChatPageState {
  const factory ChatPageState.initial({
    required List<Message> messages,
    required GoogleSignInAccount user,
  }) = Initial;
  const factory ChatPageState.messagesUpdated({
    required List<Message> messages,
    required GoogleSignInAccount user,
  }) = MessagesUpdated;
}
