import 'package:flutter/material.dart';
import 'package:profile_photo/profile_photo.dart';
import 'dart:math' as math;

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
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
                  totalWidth: 55,
                  cornerRadius: 70,
                  color: Colors.green,
                  textPadding: 12,
                  name: 'Виктор Власов',
                  fontColor: Colors.white,
                  nameDisplayOption: NameDisplayOptions.initials,
                  fontWeight: FontWeight.bold,
                  badgeSize: 30,
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
              ],
            ),
          ),
        ),
      ),
      body: Stack(
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
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Transform.rotate(
                        angle: -math.pi / 4,
                        child: const Icon(Icons.attachment_rounded,
                            color: Colors.black, size: 25),
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
                    ),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton(
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
    );
  }
}
