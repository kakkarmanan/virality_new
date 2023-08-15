import 'package:flutter/material.dart';

class LeaderBoard_tile extends StatelessWidget {
  const LeaderBoard_tile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller;
    _controller = TextEditingController(text: 'Predefined Text');
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: TextField(
        controller: _controller,
        readOnly: true,
        decoration: InputDecoration(
          // hintText: 'Enter text',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
      trailing: Text('\$23'),
    );
    // return Card(
    //   margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    //   shadowColor: Colors.grey[200],
    //   color: Colors.white,
    //   child: Container(
    //     padding: EdgeInsets.all(8.0),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         Text('1',
    //             style: TextStyle(
    //                 color: Colors.black, fontWeight: FontWeight.bold)),
    //         CircleAvatar(
    //           foregroundColor: Colors.green,
    //         ),
    //         Text(
    //           'ABC',
    //           style:
    //               TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    //         ),
    //         Text(
    //           "Score",
    //           style:
    //               TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}


// const Padding(
//         padding: EdgeInsets.all(20),
//         child: ListTile(
//           tileColor: Colors.grey,
//           leading: CircleAvatar(
//             radius: 40,
            
//             backgroundImage: AssetImage("assets/img/virality_logo.png"),
//           ),
//           title: Text('ABC'),
//           trailing: Text('\$212'),
//         ))