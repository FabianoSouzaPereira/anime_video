import 'package:flutter/material.dart';
import 'package:anime_video/pages/home/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}
