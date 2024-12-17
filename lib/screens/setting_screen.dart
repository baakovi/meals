// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../components/main_drawer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        backgroundColor: Colors.pink[400],
        foregroundColor: Colors.white,
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Configurações'),
      ),
    );
  }
}
