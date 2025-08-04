

import 'package:flutter/material.dart';
import 'package:naily/core/theme/app_colors.dart';

final ButtonStyle customGrayButtonStyle = TextButton.styleFrom(
  backgroundColor: AppColors.gray,
  foregroundColor: AppColors.black,
  fixedSize: const Size(126, 36),
  textStyle: const TextStyle(
    fontSize: 12,
  ),
);
