import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naily/core/theme/app_colors.dart';
import 'package:naily/core/theme/app_spacing.dart';
import 'package:naily/features/login/components/login_ui.dart';
import 'package:naily/features/signup/components/signup_button.dart';
import 'package:naily/features/signup/components/signup_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Naily.svg'),
              const SizedBox(height: AppSpacing.xxl),
              const LoginUi(),
              const SizedBox(height: AppSpacing.xxl),
              const Text("または",
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.pink,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              SignupButton(),
            ],
          ),
        ),
      ),
    );
  }
}
