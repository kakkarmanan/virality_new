import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed_page extends StatefulWidget {
  const Feed_page({super.key});

  @override
  State<Feed_page> createState() => _Feed_pageState();
}

class _Feed_pageState extends State<Feed_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/virality_logo.png")),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget? mediaPreview;
String? activityItemText;

// class ActivityFeedItem extends StatelessWidget {
//   // final DocumentSnapshot? loginUser;
//   final String username;
//   // final String userId;
//   // final String type;
//   // final String mediaUrl;
//   // final String postId;
//   // final String userProfileImg;
//   // final String commentData;
//   // final Timestamp? timestamp;

//   ActivityFeedItem({
//     //this.loginUser,
//     this.username = "",
//     // this.userId = "",
//     // this.type = "",
//     // this.mediaUrl = "",
//     // this.postId = "",
//     // this.userProfileImg = "",
//     // this.commentData = "",
//     // this.timestamp,
//   });

//   // factory ActivityFeedItem.fromDocument(
//   //     QueryDocumentSnapshot? doc, DocumentSnapshot? loginUser) {
//   //   final data = doc!.data();
//   //   return ActivityFeedItem(
//   //     loginUser: loginUser,
//   //     username: doc['username'],
//   //     userId: doc['userId'],
//   //     type: doc['type'],
//   //     mediaUrl: doc['mediaUrl'],
//   //     postId: doc['postId'],
//   //     userProfileImg: doc['userProfileImg'],
//   //     commentData: doc['commentData'],
//   //     timestamp: doc['timestamp'],
//   //   );
//   // }

//   configureMediaPreview(BuildContext context) {
//     // if (type == 'like' || type == 'comment') {
//     mediaPreview = GestureDetector(
//       onTap: () => {},
//       // Navigator.push(
//       //     context,
//       //     MaterialPageRoute(
//       //         builder: (context) => PostScreen(
//       //               loginuser: loginUser,
//       //               userId: userId,
//       //               postId: postId,
//       //             ))),
//       // ignore: sized_box_for_whitespace
//       child: Container(
//         height: 50.0,
//         width: 50.0,
//         child: AspectRatio(
//           aspectRatio: 16 / 9,
//           child: Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/img/virality_logo.png"),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//     // } else {
//     //   mediaPreview = const Text("");
//     // }

//     // if (type == 'like') {
//     //   activityItemText = 'liked your post';
//     // } else if (type == 'follow') {
//     //   activityItemText = 'started following you';
//     // } else if (type == 'comment') {
//     //   activityItemText = 'replied: $commentData';
//     // } else {
//     //   activityItemText = 'Error: Unknown type $type';
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     configureMediaPreview(context);
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 2.0),
//       child: Container(
//         color: Colors.white54,
//         child: ListTile(
//           title: GestureDetector(
//             onTap: () => {},
//             // Navigator.push(
//             //     context,
//             //     MaterialPageRoute(
//             //         builder: (context) => Profile(
//             //               user: loginUser,
//             //               currentinUser: loginUser,
//             //               userId: userId,
//             //             ))),
//             child: RichText(
//               overflow: TextOverflow.ellipsis,
//               text: TextSpan(
//                 style: const TextStyle(
//                   fontSize: 14.0,
//                   color: Colors.black,
//                 ),
//                 children: [
//                   TextSpan(
//                     text: username,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   TextSpan(text: ' $activityItemText'),
//                 ],
//               ),
//             ),
//           ),
//           leading: const CircleAvatar(
//             backgroundImage: AssetImage("assets/img/apple-logo.png"),
//           ),
//           subtitle: const Text(
//             // timeago.format(timestamp!.toDate()),
//             "Hello",
//             overflow: TextOverflow.ellipsis,
//           ),
//           trailing: mediaPreview,
//         ),
//       ),
//     );
//   }
// }
