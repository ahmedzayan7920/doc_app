import 'package:flutter/material.dart';

import '../widgets/home_top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              HomeTopBar(),
            ],
          ),
        ),
      ),
    );
  }
}