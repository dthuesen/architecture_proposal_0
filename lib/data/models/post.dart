import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post extends Equatable {
  @JsonKey(required: true)
  final int id;
  @JsonKey(required: true)
  final String title;
  final String? body;
  @JsonKey(required: true)
  final int userId;

  const Post({
    required this.id,
    required this.title,
    this.body,
    required this.userId,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  List<Object?> get props => [id, title, body, userId];

  bool get strinfify => true;
}
