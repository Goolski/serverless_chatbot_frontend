import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

part 'chat_page_state.freezed.dart';

@freezed
class ChatPageState with _$ChatPageState {
  const factory ChatPageState.initial() = Initial;
  const factory ChatPageState.messagesUpdated(
      {required List<types.Message> messages}) = MessagesUpdated;
}
