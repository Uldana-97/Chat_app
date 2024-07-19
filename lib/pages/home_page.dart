import 'package:chat_app/models/last_message_model.dart';
import 'package:flutter/material.dart';
import 'package:profile_photo/profile_photo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
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
                          child: InkWell(
                            onDoubleTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text(
                                    'Текст',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  content: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 250,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    hintText: "Поиск",
                                                    hintStyle: TextStyle(
                                                        color: Colors
                                                            .grey.shade700,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                    prefixIcon: Icon(
                                                        Icons.search_rounded,
                                                        color: Colors
                                                            .grey.shade600,
                                                        size: 25),
                                                    border: InputBorder.none,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              );
                            },
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
                final LastMessage chat = chats[index];
                return Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 0, top: 12, bottom: 12),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                    ),
                  ]),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'chatPage');
                        },
                        onDoubleTap: () {
                          Navigator.pushNamed(context, 'chatPageWithImage');
                        },
                        child: SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              ProfilePhoto(
                                totalWidth: 55,
                                cornerRadius: 80,
                                color: chat.sender.color,
                                textPadding: 11,
                                name: chat.sender.name,
                                fontColor: Colors.white,
                                nameDisplayOption: NameDisplayOptions.initials,
                                fontWeight: FontWeight.bold,
                                badgeSize: 30,
                                badgeAlignment: Alignment.topLeft,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 8, bottom: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chat.sender.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      chat.text,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        chat.time,
                                        textAlign: TextAlign.end,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                );
              }),
        ]),
      ),
    );
  }
}
