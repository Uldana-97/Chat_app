import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Text(
                    'Чаты',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Поиск",
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                                prefixIcon: Icon(Icons.search_rounded,
                                    color: Colors.grey.shade600, size: 25),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ListView.builder(
              shrinkWrap: true,
              itemCount: chats.length, 
              itemBuilder: (BuildContext context, int index) {
                return const RecentChats();
              }
            )
          ],
        ),
      ),
    );
  }
}

