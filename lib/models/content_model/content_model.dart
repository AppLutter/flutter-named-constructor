import 'package:freezed_annotation/freezed_annotation.dart';
part 'content_model.freezed.dart';
part 'content_model.g.dart';

@freezed
class ContentModel with _$ContentModel {
const factory  ContentModel({
  required String title,
  required String content,
  required String assetPath,
})=_ContentModel;

factory ContentModel.fromJson(Map<String, dynamic> json) => _$ContentModelFromJson(json);
}

