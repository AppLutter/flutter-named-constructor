import 'package:flutter/material.dart';
import 'package:named_constructor_test/models/content_model/content_model.dart';
import 'package:named_constructor_test/post.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
    required this.model,
  }) : super(key: key);
  final ContentModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Post.detail(model: model),
    );
  }
}
