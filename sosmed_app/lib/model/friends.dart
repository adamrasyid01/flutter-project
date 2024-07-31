import 'dart:typed_data';

import 'package:hive/hive.dart';
part 'friends.g.dart';

@HiveType(typeId: 0)
class Friend extends HiveObject {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String imageUrl;

  @HiveField(2)
  late String? numPosts;

  @HiveField(3)
  late String? numFollowers;

  @HiveField(4)
  late String? numFollowing;

  @HiveField(5)
  late String? bacImageUrl;

  @HiveField(6)
  late int id;

  Friend({
    required this.imageUrl,
    required this.name,
    this.numFollowers,
    this.numFollowing,
    this.numPosts, // Mengubah numPposts menjadi numPosts
    this.bacImageUrl,
    required this.id
  });
}

// List<Friend> favorite = [
//   Friend(
//     name: 'Ahmed',
//     imageUrl: 'assets/images/profile/image01.jpg',
//     bacImageUrl: 'assets/images/posts/1.jpg',
//     numFollowers: '300',
//     numFollowing: '400',
//     numPosts: '5012',
//   ),
//   Friend(
//     name: 'saly',
//     imageUrl: 'assets/images/profile/image02.jpg',
//     bacImageUrl: 'assets/images/posts/2.jpg',
//     numFollowers: '200',
//     numFollowing: '420',
//     numPosts: '502',
//   ),
//   Friend(
//     name: 'Alix',
//     imageUrl: 'assets/images/profile/image03.jpg',
//     bacImageUrl: 'assets/images/posts/3.jpg',
//     numFollowers: '330',
//     numFollowing: '403',
//     numPosts: '3012',
//   ),
//   Friend(
//     name: 'Sara',
//     imageUrl: 'assets/images/profile/image04.jpg',
//     bacImageUrl: 'assets/images/posts/2.jpg',
//     numFollowers: '302',
//     numFollowing: '200',
//     numPosts: '5022',
//   ),
//   Friend(
//     name: 'Tomas',
//     imageUrl: 'assets/images/profile/image05.jpg',
//     bacImageUrl: 'assets/images/posts/1.jpg',
//     numFollowers: '30',
//     numFollowing: '40',
//     numPosts: '522',
//   ),
// ];
