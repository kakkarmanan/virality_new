import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final FocusNode myFocusNodePostType = FocusNode();
  final FocusNode myFocusNodeCaption = FocusNode();
  final FocusNode myFocusNodeLocation = FocusNode();

  TextEditingController postTypeController = TextEditingController();
  TextEditingController captionController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  handleCreatePost() async {
    print(postTypeController.text.toString());
    print(captionController.text.toString());
    var url = Uri.parse("http://192.168.68.145:8000/api/v1/post");
    http
        .post(url,
            headers: <String, String>{
              'content-type': 'application/json',
              'Accept': 'application/json'
            },
            body: json.encode({
              'userId': '2c3eb4ac-83b4-49e9-8889-6f2cd6b792ab',
              'file':
                  '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',
              'postType': postTypeController.text.toString(),
              'caption': captionController.text.toString(),
              'location': locationController.text.toString(),
            }))
        .then((value) => print(value))
        .catchError((error) => print(error));
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    // if (response.statusCode == 200) {
    //   print(response.body);
    //   var data = jsonDecode(response.body);
    //   // Navigator.push(
    //   //     context,
    //   //     MaterialPageRoute(
    //   //         builder: (context) =>
    //   //             Home(email: loginEmailController.text.toString())));
    // } else {
    //   print("Error while creating post");
    //   ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text('User details not found')));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          TextField(
            focusNode: myFocusNodePostType,
            controller: postTypeController,
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.words,
            style: const TextStyle(
                fontFamily: "WorkSansSemiBold",
                fontSize: 16.0,
                color: Colors.black),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(
                Icons.type_specimen,
                color: Colors.black,
              ),
              hintText: "Post Type Ex. PICTURE",
              hintStyle: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            focusNode: myFocusNodeCaption,
            controller: captionController,
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.words,
            style: const TextStyle(
                fontFamily: "WorkSansSemiBold",
                fontSize: 16.0,
                color: Colors.black),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(
                Icons.closed_caption,
                color: Colors.black,
              ),
              hintText: "Caption",
              hintStyle: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            focusNode: myFocusNodeLocation,
            controller: locationController,
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.words,
            style: const TextStyle(
                fontFamily: "WorkSansSemiBold",
                fontSize: 16.0,
                color: Colors.black),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(
                Icons.location_on_rounded,
                color: Colors.black,
              ),
              hintText: "Location",
              hintStyle: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(150, 40)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(color: Colors.black)))),
            child: const Text(
              'Create',
              style: TextStyle(
                inherit: false,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              handleCreatePost();
            },
          ),
        ],
      ),
    );
  }
}
