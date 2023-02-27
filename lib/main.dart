import 'package:flutter/material.dart';
import 'package:named_constructor_test/detail_screen.dart';
import 'package:named_constructor_test/generated/assets.dart';
import 'package:named_constructor_test/models/content_model/content_model.dart';
import 'package:named_constructor_test/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ContentModel> models = const [
    ContentModel(title: '그림1', content: '그림이 멋있어요', assetPath: Assets.assetsImage1),
    ContentModel(title: '그림2', content: '그림이 이뻐요', assetPath: Assets.assetsImage2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailScreen(model: models[index]),
                    ),
                  );
                },
                child: Post(model: models[index]));
          }),
    );
  }
}
