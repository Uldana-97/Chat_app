import 'package:chat_app/models/user_model.dart';

class LastMessage {
  final User sender;
  final String time;
  final String text;
  final bool isSentByMe;

  LastMessage({
    required this.sender,
    required this.time,
    required this.text,
    required this.isSentByMe,
  });

  get color => null;
}

//example chats on home screen
List<LastMessage> chats = [
  LastMessage(
    sender: user1, 
    time: 'Вчера', 
    text: 'Вы: Уже сделал?', 
    isSentByMe: true,
  ),
  LastMessage(
    sender: user2, 
    time: '12.01.22', 
    text: 'Я готов', 
    isSentByMe: false
  ),
  LastMessage(
    sender: user3, 
    time: '2 минуты назад', 
    text: 'Вы: Я вышел', 
    isSentByMe: true
  ),
  LastMessage(
    sender: user4, 
    time: '09:23', 
    text: 'Вы: Я вышел', 
    isSentByMe: true
  ),
];
