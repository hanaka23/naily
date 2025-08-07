import 'package:flutter/material.dart';
import 'package:naily/core/theme/app_spacing.dart';
import 'package:naily/features/post/components/add_images_ui.dart';
import 'package:naily/features/post/components/edit_discription_ui.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: AppSpacing.xxl, left: AppSpacing.sm, right: AppSpacing.sm),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PostImages(),
            SizedBox(height: 20),
            PostDiscription(),
          ],
        ),
      ),
    );
  }
}