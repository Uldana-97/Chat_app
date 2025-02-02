import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:profile_photo/profile_photo.dart';
import 'package:grouped_list/grouped_list.dart';
import 'dart:math' as math;

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> messages = [
    Message(
      text: 'Уже сделал?',
      date: DateTime.now(),
      isSentByMe: true,
    ),
    Message(text: 'Хорошо', date: DateTime(2022,01,27), isSentByMe: false),
    Message(text: 'Сделай мне кофе, пожалуйста', date: DateTime(2022,01,27, 21,41), isSentByMe: true),
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                ),
                const SizedBox(width: 2),
                ProfilePhoto(
                  totalWidth: 50,
                  cornerRadius: 65,
                  color: const Color.fromARGB(255, 99, 226, 103),
                  textPadding: 11,
                  name: 'Виктор Власов',
                  fontColor: Colors.white,
                  nameDisplayOption: NameDisplayOptions.initials,
                  fontWeight: FontWeight.bold,
                  badgeSize: 20,
                  badgeAlignment: Alignment.topLeft,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Виктор Власов",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 0),
                      Text('В сети',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: const EdgeInsets.all(20),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: false,
              floatingHeader: true,
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => Stack(
                alignment: Alignment.center,
                children: [
                  const Divider(indent: 20, endIndent: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Text(
                      DateFormat.yMd().format(message.date),
                      style: const TextStyle(color: Colors.black54),
                    ),
                  )
                ],
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  color: const Color.fromARGB(255, 99, 226, 103),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, bottom: 20, top: 0, right: 20),
                  height: 110,
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Row(
                    children: <Widget>[
                      FloatingActionButton(
                        heroTag: 'attach',
                        onPressed: () {},
                        backgroundColor: Colors.grey.shade300,
                        elevation: 0,
                        child: Transform.rotate(
                          angle: -math.pi / 4,
                          child: const Icon(
                            Icons.attachment_rounded,
                            color: Colors.black, size: 25
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Сообщение',
                            hintStyle: const TextStyle(color: Colors.black54),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: const Color.fromARGB(255, 216, 215, 215),
                            contentPadding: const EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                          ),
                          onSubmitted: (text) {
                            final message = Message(
                              text: text, 
                              date: DateTime.now(), 
                              isSentByMe: true,
                            );
          
                            setState(() => messages.add(message));
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      FloatingActionButton(
                        heroTag: 'audio',
                        onPressed: () {},
                        backgroundColor: Colors.grey.shade300,
                        elevation: 0,
                        child: const Icon(Icons.mic_none,
                            color: Colors.black, size: 25),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ]
      ),
    );
  }
}
