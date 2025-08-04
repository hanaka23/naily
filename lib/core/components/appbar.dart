import 'package:flutter/material.dart';
import 'package:naily/core/theme/app_sizes.dart';

class MinimalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MinimalAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true, // ←ボタン自動表示
    );
  }
}
