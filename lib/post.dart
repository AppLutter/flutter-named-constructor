import 'package:flutter/material.dart';
import 'package:named_constructor_test/models/content_model/content_model.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
    required this.model,
    this.isDetail = false,
  }) : super(key: key);
  final ContentModel model;
  final bool isDetail;

  const Post.detail({
    super.key,
    required this.model,
    this.isDetail = true,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10.0,
      ),
      color: Colors.orangeAccent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10.0),
              const SizedBox(height: 10.0),
              Text(model.content),
              const SizedBox(height: 10.0),
              if (isDetail)
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: size.width * 0.8,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Hero(tag: model.assetPath, child: Image.asset(model.assetPath)),
                    ),
                  ),
                ),
            ],
          ),
          const Spacer(),
          if (!isDetail)
            Hero(
              tag: model.assetPath,
              child: SizedBox(
                width: size.width * 0.2,
                child: Image.asset(model.assetPath),
              ),
            )
        ],
      ),
    );
  }
}
