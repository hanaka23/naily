import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naily/core/components/appbar.dart';
import 'package:naily/core/theme/app_colors.dart';
import 'package:naily/core/theme/app_spacing.dart';
import 'package:naily/features/signup/components/signup_ui.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MinimalAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Naily.svg'),
              const SizedBox(height: AppSpacing.xxl),
              const SignupUi(),
              const SizedBox(height: AppSpacing.xxl),
            ],
          ),
        ),
      ),
    );
  }
}