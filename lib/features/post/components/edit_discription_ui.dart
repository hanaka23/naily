import 'package:flutter/material.dart';
import 'package:naily/core/theme/app_colors.dart';

class PostDiscription extends StatefulWidget {
  const PostDiscription({super.key});

  @override
  State<PostDiscription> createState() => _PostDiscriptionState();
}

class _PostDiscriptionState extends State<PostDiscription> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: TextField(
        expands: true,
        maxLines: null,
        minLines: null,
        decoration: InputDecoration(
          hintText: 'ここに投稿内容を入力してください',
          filled: true, // 背景を塗りつぶす
          fillColor: AppColors.gray, // 背景色を指定
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none, // 枠線を非表示
          ),
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
}