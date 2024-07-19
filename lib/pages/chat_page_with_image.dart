import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:profile_photo/profile_photo.dart';
import 'dart:math' as math;

class ChatPageWithImage extends StatefulWidget {
  const ChatPageWithImage ({super.key});

  @override
  State<ChatPageWithImage> createState() => _ChatPageWithImageState();
}

class _ChatPageWithImageState extends State<ChatPageWithImage> {
  
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                const BubbleNormalImage(
                  id: 'id001', 
                  image: Image(image: AssetImage('images/mountain.jpg')),
                  isSender: true,
                  tail: true,
                  seen: true,
                  color: Color.fromARGB(255, 94, 215, 98),
                  //trailing: Text('Какие горы', style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
                const BubbleSpecialThree(
                  text: 'Какие горы',
                  isSender: true,
                  color: Color.fromARGB(255, 94, 215, 98),
                  tail: true,
                  seen: true,
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
                const SizedBox(height: 15),
                DateChip(date: DateTime(2022,01,27, 21,41)),
                const SizedBox(height: 15),
                const BubbleSpecialThree(
                  text: 'Сделай мне кофе, пожалуйста',
                  isSender: true,
                  color: Color.fromARGB(255, 94, 215, 98),
                  tail: true,
                  seen: true,
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
                BubbleNormalImage(
                  id: 'id002', 
                  image: const Image(image: AssetImage('images/mountain_2.webp')),
                  color: Colors.grey.shade400,
                  isSender: false,
                  tail: true,
                ),
                BubbleSpecialThree(
                  text: 'Хорошо',
                  isSender: false,
                  tail: true,
                  color: Colors.grey.shade300,
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
                DateChip(date: DateTime.now()),
                const BubbleSpecialThree(
                  text: 'Уже сделал?',
                  tail: true,
                  color: Color.fromARGB(255, 94, 215, 98),
                  sent: true,
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
                const BubbleSpecialThree(
                  text: 'Мне просто срочно нужно',
                  tail: true,
                  color: Color.fromARGB(255, 94, 215, 98),
                  sent: true,
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  ),
                )
              ]
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
                        heroTag: null,
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
                          onSubmitted: (text) {},
                        ),
                      ),
                      const SizedBox(width: 8),
                      FloatingActionButton(
                        heroTag: null,
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
