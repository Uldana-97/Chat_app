import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final Color color;
  

  User({
    required this.id,
    required this.name,
    required this.color,
    
  });
}


final User user1 = User(
  id: 1,
  name: 'Виктор Власов',
  color: const Color.fromARGB(255, 83, 194, 87),  
);
final User user2 = User(
  id: 2,
  name: 'Саша Алексеев',
  color: const Color.fromARGB(255, 244, 151, 10),
);
final User user3 = User(
  id: 3,
  name: 'Пётр Жаринов',
  color: const Color.fromARGB(255, 37, 148, 239),
);
final User user4 = User(
  id: 4,
  name: 'Алина Жукова',
  color: const Color.fromARGB(255, 244, 151, 10), 
);