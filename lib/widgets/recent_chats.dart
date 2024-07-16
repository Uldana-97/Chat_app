// import 'package:flutter/material.dart';
// import 'package:profile_photo/profile_photo.dart';

// class RecentChats extends StatelessWidget {
//   const RecentChats({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//         decoration: BoxDecoration(color: Colors.white, boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.4),
//             spreadRadius: 1,
//           )
//         ]),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: InkWell(
//                 onTap: () {
//                   Navigator.pushNamed(context, 'chatPage');
//                 },
//                 child: SizedBox(
//                   height: 60,
//                   child: Row(
//                     children: [
//                       ProfilePhoto(
//                         totalWidth: 55,
//                         cornerRadius: 80,
//                         color: Colors.green,
//                         textPadding: 11,
//                         name: 'Виктор Власов',
//                         fontColor: Colors.white,
//                         nameDisplayOption: NameDisplayOptions.initials,
//                         fontWeight: FontWeight.bold,
//                         badgeSize: 30,
//                         badgeAlignment: Alignment.topLeft,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 5),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               chat.sender.name,
//                               style: const TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               chat.text,
//                               style: const TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 50),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 chat.time,
//                                 style: const TextStyle(
//                                     fontSize: 15, color: Colors.black54),
//                               )
//                             ]),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }
