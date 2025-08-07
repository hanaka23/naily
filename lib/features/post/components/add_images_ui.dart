import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:naily/core/theme/app_colors.dart';
import 'package:naily/core/theme/app_sizes.dart';
import 'package:naily/core/theme/app_spacing.dart';

class PostImages extends StatefulWidget {
  const PostImages({super.key});

  @override
  State<PostImages> createState() => _PostImagesState();
}

class _PostImagesState extends State<PostImages> {
  List<XFile> images = [];
  final imagePicker = ImagePicker();

  Future<void> pickImage() async {
    final picked = await imagePicker.pickImage(source: ImageSource.gallery);
    if (picked == null) return;

    setState(() {
      images.add(picked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.addImageButtonSize,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            // 最初のボタン：画像追加
            return Padding(
              padding: const EdgeInsets.only(right: AppSpacing.xs),
              child: TextButton(
                onPressed: pickImage,
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.darkGray,
                  fixedSize: const Size(AppSizes.addImageButtonSize, AppSizes.addImageButtonSize),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Icon(Icons.add, size: 24, color: AppColors.black),
              ),
            );
          } else {
            // 選択された画像を表示
            final image = images[index - 1];
            return Padding(
              padding: const EdgeInsets.only(right: AppSpacing.xs),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.file(
                  File(image.path),
                  width: AppSizes.addImageButtonSize,
                  height: AppSizes.addImageButtonSize,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
