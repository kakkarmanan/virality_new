import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String username;

  const Post({this.username = ""});

  buildPostHeader() {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/img/virality_logo.png"),
      ),
      title: GestureDetector(
        onTap: () => {print("Showing Profile")},
        child: const Text(
          "ABC",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      subtitle: const Text("Location"),
      trailing: IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () => {print('deleting post')},
      ),
    );
  }

  buildPostImage() {
    return GestureDetector(
      onDoubleTap: () => {print('like')},
      child: const Stack(
        alignment: Alignment.center,
        children: [Image(image: AssetImage("assets/img/apple-logo.png"))],
      ),
    );
  }

  buildPostFooter() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 40.0, left: 20.0)),
            GestureDetector(
              onTap: () => print('like'),
              child: const Icon(
                Icons.favorite_border,
                size: 28.0,
                color: Colors.pink,
              ),
            ),
            const Padding(padding: EdgeInsets.only(right: 20.0)),
            GestureDetector(
              onTap: () => print('comment'),
              child: const Icon(
                Icons.chat,
                size: 28.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: const Text('# likes',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: const Text('username',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            const Expanded(child: Text('Description')),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildPostHeader(),
        const Divider(
          height: 0,
        ),
        buildPostImage(),
        const Divider(
          height: 0,
        ),
        buildPostFooter(),
        const Divider(
          height: 0,
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
