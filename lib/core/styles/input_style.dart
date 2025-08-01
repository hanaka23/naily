import 'package:flutter/material.dart';
import 'package:naily/core/theme/app_colors.dart';

final InputDecoration customInputDecoration = InputDecoration(
    labelStyle: const TextStyle(
      color: AppColors.textGray,
      fontSize: 12,
      ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.darkGray,
        ),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.darkGray,
      ),
    ),
);
