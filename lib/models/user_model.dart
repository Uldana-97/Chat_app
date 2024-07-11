import 'package:flutter/material.dart';
import 'package:profile_photo/profile_photo.dart';

class User {
  final int id;
  final String name;
  dynamic profilePhoto;

  User({
    required this.id,
    required this.name,
    required this.profilePhoto,
  });
}


final User user1 = User(
  id: 1,
  name: 'Виктор Власов',
  profilePhoto: ProfilePhoto(
    totalWidth: 55,
    cornerRadius: 70, 
    color: Colors.green,
    textPadding: 11,
    name: 'Виктор Власов',
    fontColor: Colors.white,
    nameDisplayOption: NameDisplayOptions.initials,
    fontWeight: FontWeight.bold,
    badgeSize: 30,
    badgeAlignment: Alignment.topLeft,
  ),  
);
final User user2 = User(
  id: 2,
  name: 'Саша Алексеев',
  profilePhoto: ProfilePhoto(
    totalWidth: 55,
    cornerRadius: 70, 
    color: Colors.orange,
    textPadding: 11,
    name: 'Саша Алексеев',
    fontColor: Colors.white,
    nameDisplayOption: NameDisplayOptions.initials,
    fontWeight: FontWeight.bold,
    badgeSize: 30,
    badgeAlignment: Alignment.topLeft,
  ),  
);
final User user3 = User(
  id: 3,
  name: 'Пётр Жаринов',
  profilePhoto: ProfilePhoto(
    totalWidth: 55,
    cornerRadius: 70, 
    color: Colors.blue,
    textPadding: 11,
    name: 'Пётр Жаринов',
    fontColor: Colors.white,
    nameDisplayOption: NameDisplayOptions.initials,
    fontWeight: FontWeight.bold,
    badgeSize: 30,
    badgeAlignment: Alignment.topLeft,
  ),  
);
final User user4 = User(
  id: 4,
  name: 'Алина Жукова',
  profilePhoto: ProfilePhoto(
    totalWidth: 55,
    cornerRadius: 70, 
    color: Colors.orange,
    textPadding: 11,
    name: 'Алина Жукова',
    fontColor: Colors.white,
    nameDisplayOption: NameDisplayOptions.initials,
    fontWeight: FontWeight.bold,
    badgeSize: 30,
    badgeAlignment: Alignment.topLeft,
  ),  
);