import 'package:chat_app/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  //final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    //required this.unread,
  });

  get color => null;
}

//example chats on home screen
List<Message> chats = [
  Message(
    sender: user1, 
    time: 'Вчера', 
    text: 'Уже сделал?', 
    //unread: true,
  ),
  Message(
    sender: user2, 
    time: '12.01.22', 
    text: 'Я готов', 
  ),
  Message(
    sender: user3, 
    time: '2 минуты назад', 
    text: 'Я вышел', 
  ),
  Message(
    sender: user4, 
    time: '09:23', 
    text: 'Я вышел', 
  ),
];

//example messages in chat screen
List<Message> messages = [
  Message(
    sender: user1, 
    time: '21:41', 
    text: 'Хорошо',
  ),
];