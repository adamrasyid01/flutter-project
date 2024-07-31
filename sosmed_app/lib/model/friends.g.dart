// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FriendAdapter extends TypeAdapter<Friend> {
  @override
  final int typeId = 0;

  @override
  Friend read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Friend(
      imageUrl: fields[1] as String,
      name: fields[0] as String,
      numFollowers: fields[3] as String?,
      numFollowing: fields[4] as String?,
      numPosts: fields[2] as String?,
      bacImageUrl: fields[5] as String?,
      id: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Friend obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.numPosts)
      ..writeByte(3)
      ..write(obj.numFollowers)
      ..writeByte(4)
      ..write(obj.numFollowing)
      ..writeByte(5)
      ..write(obj.bacImageUrl)
      ..writeByte(6)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FriendAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
