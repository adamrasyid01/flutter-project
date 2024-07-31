import 'package:flutter/material.dart';
import 'package:sosmed_app/model/friends.dart';
import 'package:sosmed_app/pages/profile.dart';

Widget buildFriendListItem(BuildContext context, Friend friend) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ProfilePage(friend: friend),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF3A3740),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 3,
                color: Color(0xFFfe8057).withOpacity(0.5),
              ),
            ),
            child: Hero(
              tag: friend.imageUrl,
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(friend.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 70,
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                friend.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Divider(
            color: Color(0xFFfe8057).withOpacity(0.5),
            height: 10.0,
            indent: 5.0,
            endIndent: 5.0,
          ),
        ],
      ),
    ),
  );
}

Widget buildFriendListView(BuildContext context, List<Friend> friends) {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: friends.length,
      itemBuilder: (context, index) {
        final Friend friend = friends[index];
        return buildFriendListItem(context, friend);
      },
    ),
  );
}
