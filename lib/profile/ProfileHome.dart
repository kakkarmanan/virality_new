import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:virality_new/profile/portfolio/PortfolioPage.dart';

class ProfileHome extends StatefulWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Column buildCountColumn(String label, int count) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 4.0),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
      ],
    );
  }

  Container buildButton(String text) {
    if (text == "Edit Profile") {
      return Container(
        padding: EdgeInsets.only(top: 2.0),
        child: TextButton(
          onPressed: () => {print("handle edit profile")},
          child: Container(
            width: 250.0,
            height: 25.0,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      );
    } else if (text == "Unfollow") {
      return Container(
        padding: EdgeInsets.only(top: 2.0),
        child: TextButton(
          onPressed: () => {print('handle unfollow')},
          child: Container(
            width: 250.0,
            height: 25.0,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      );
    }
    return Container(
      padding: EdgeInsets.only(top: 2.0),
      child: TextButton(
        onPressed: () => {print('handle follow User')},
        child: Container(
          width: 250.0,
          height: 25.0,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

  buildProfileButton() {
    //User currentLoggedinUser = User.fromDocument(widget.currentinUser);
    //User lookUser = User.fromDocument(widget.user);
    // bool isProfileOWner = widget.userId == currentLoggedinUser.id;
    // if (isProfileOWner) {
    //   return buildButton("Edit Profile");
    // } else if (isFollowing) {
    //   return buildButton("Unfollow");
    // } else if (!isFollowing) {
    //   return buildButton("Follow");
    // }

    return buildButton("Edit profile");
  }

  buildProfileHeader() {
    // return FutureBuilder<DocumentSnapshot?>(
    //   future: users.doc(widget.userId).get(),
    //   builder: (context, snapshot) {
    // if (!snapshot.hasData) {
    //   return circularProgress();
    // }
    //User profileUser = User.fromDocument(snapshot.data);
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('/assets/img/virality_logo.png')
                  //CachedNetworkImageProvider(profileUser.photoUrl),
                  ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCountColumn("Posts", 0),
                        buildCountColumn("Followers", 0),
                        buildCountColumn("Following", 0),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildProfileButton(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              //username
              'ABC',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              //displayname
              'ABC',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            //bio
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              'Bio',
            ),
          ),
        ],
      ),
    );
    // };
    // );
  }

  buildProfilePost() {
    // if (isLoading) {
    //   return circularProgress();
    // } else if (ProfilePosts.isEmpty) {
    //   return Container(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         SvgPicture.asset(
    //           'assets/images/no_content.svg',
    //           height: 260.0,
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 20.0),
    //           child: Text(
    //             "No Posts",
    //             style: TextStyle(
    //               color: Colors.redAccent,
    //               fontSize: 20.0,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // } else if (postOrientation == 'grid') {
    //   List<GridTile> gridTiles = [];
    //   ProfilePosts.forEach((post) {
    //     gridTiles.add(GridTile(
    //       child: PostTile(widget.currentinUser, post),
    //     ));
    //   });
    //   return GridView.count(
    //     crossAxisCount: 3,
    //     childAspectRatio: 1.0,
    //     mainAxisSpacing: 1.5,
    //     crossAxisSpacing: 1.5,
    //     shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     children: gridTiles,
    //   );
    // } else if (postOrientation == "list") {
    //   return Column(
    //     children: ProfilePosts,
    //   );
    // }

    return Container(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SvgPicture.asset(
          //   'assets/images/no_content.svg',
          //   height: 260.0,
          // ),
          Image(
            image: AssetImage('assets/img/google-logo.png'),
            height: 260.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "No Posts",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // setPostOrientation(String orientation) {
  //   setState(() {
  //     postOrientation = orientation;
  //   });
  // }

  buildTogglePostOrientation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => {print('grid view')},
          icon: Icon(
            Icons.grid_on,
            // color: postOrientation == "grid"
            //     ? Theme.of(context).colorScheme.primary
            //     : Colors.grey,
          ),
        ),
        IconButton(
          onPressed: () => {print('List view')},
          icon: Icon(
            Icons.list,
            // color: postOrientation == "list"
            //     ? Theme.of(context).colorScheme.primary
            //     : Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Virality",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PortfolioPage()));
              },
              icon: Icon(
                Icons.line_axis,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        children: [
          buildProfileHeader(),
          const Divider(),
          buildTogglePostOrientation(),
          //Divider(height: 0),
          buildProfilePost(),
        ],
      ),
    );
  }
}
