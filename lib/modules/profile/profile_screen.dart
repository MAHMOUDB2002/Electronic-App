import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor('#333742')),
      appBar: AppBar(
        backgroundColor: Color(hexColor('#333742')),
        title: Text('Profile'),
      ),
    );
  }
}
