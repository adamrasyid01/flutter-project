import 'package:sosmed_app/model/friends.dart';
import 'package:hive/hive.dart';

class FriendController {
  final String _boxname = "friendBox";
  // Future<Box<Friend>> get _box async => await Hive.openBox<Friend>(_boxName);
  Future<Box<Friend>> get _box async => Hive.openBox<Friend>(_boxname);

  Future<void> addFriend(Friend friend) async {
    final box = await _box;
    try {
      final result = box.values.toList().map((e) => e.id).toList();
      result.sort();
      await box.add(Friend(
          id: (result.isEmpty) ? 1 : result.last + 1,
          name: friend.name,
          imageUrl: friend.imageUrl));
    } catch (e) {
      throw Exception('Failed to add Friend');
    }
  }

  Future<List<Friend>> getAllFriends() async {
    var box = await _box;
    try {
      return box.values.toList();
    } catch (e) {
      throw Exception('Failed to get data');
    }
  }

  

}
