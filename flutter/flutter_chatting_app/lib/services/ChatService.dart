import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_chatting_app/AuthService.dart';
import 'package:flutter_chatting_app/models/MessageModel.dart';

class ChatService {
  static const USERS_CHAT = "users_chat";

  Stream<Event> getMessage(String currentUserId, otherUserId) {
    return FirebaseDatabase.instance
        .reference()
        .child(USERS_CHAT)
        .child(currentUserId)
        .child(otherUserId)
        .onValue;
  }

  Future<void> insertMessage(String message, String receiverId) async {
    FirebaseUser currentUser = await AuthService().getCurrentUser();

    MessageModel messageModel = MessageModel();
    messageModel.message = message;
    messageModel.uid = currentUser.uid;
    // messageModel.timestampe = DateTime.fromMillisecondsSinceEpoch().toString();

    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = message;
    data['type'] = "text";
    data['timestamp'] = 123; // get current time from the system
    data['sender_id'] = currentUser.uid;

    await FirebaseDatabase.instance
        .reference()
        .child(USERS_CHAT)
        .child(currentUser.uid)
        .child(receiverId)
        .push()
        .set(data);

    await FirebaseDatabase.instance
        .reference()
        .child(USERS_CHAT)
        .child(receiverId)
        .child(currentUser.uid)
        .push()
        .set(data);
  }
}
