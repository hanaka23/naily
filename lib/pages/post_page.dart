import 'package:flutter/material.dart';
import 'package:naily/features/post/components/add_images_ui.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: PostImages(),
      ),
    );
  }
}