import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:naily/core/components/bottombar.dart';
import 'package:naily/features/login/repositories/login_user_state.dart';
import 'package:naily/pages/feed_page.dart';
import 'package:naily/pages/login_page.dart';
import 'package:naily/pages/post_page.dart';
import 'package:naily/pages/profile_page.dart';
import 'package:naily/pages/signup_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/feed',
  redirect: (context, state) {
    final isLoggedIn = userState();
    final goingToLogin = state.fullPath == '/login';
    if (!isLoggedIn && !goingToLogin) {
      return '/login';
    }
    if (isLoggedIn && goingToLogin) {
      return '/feed'; 
    }
    return null;
  },
  
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignupPage(),
    ),

    // BottomNav 管理部分（ShellRoute）
    ShellRoute(
      builder: (context, state, child) {
        return BottomBar(child: child); 
      },
      routes: [
        GoRoute(
          path: '/feed',
          builder: (context, state) => FeedPage(),
        ),
        GoRoute(
          path: '/post',
          builder: (context, state) => PostPage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => ProfilePage(),
        ),
      ],
    ),

    // 詳細画面など
    // GoRoute(
    //   path: '/post_detail/:postId',
    //   builder: (context, state) {
    //     final postId = state.pathParameters['postId']!;
    //     return PostDetailScreen(postId: postId);
    //   },
    // ),
    // GoRoute(
    //   path: '/post_detail_me/:postId',
    //   builder: (context, state) {
    //     final postId = state.pathParameters['postId']!;
    //     return PostDetailMyScreen(postId: postId);
    //   },
    // ),
    // GoRoute(
    //   path: '/profile/:userId',
    //   builder: (context, state) {
    //     final userId = state.pathParameters['userId']!;
    //     return UserProfileScreen(userId: userId);
    //   },
    // ),
    // GoRoute(
    //   path: '/profile_edit',
    //   builder: (context, state) => ProfileEditScreen(),
    // ),
    // GoRoute(
    //   path: '/settings',
    //   builder: (context, state) => SettingsScreen(),
    // ),
    // GoRoute(
    //   path: '/search',
    //   builder: (context, state) => SearchScreen(),
    // ),
    // GoRoute(
    //   path: '/logout',
    //   builder: (context, state) => LogoutScreen(),
    // ),
  ],
);
