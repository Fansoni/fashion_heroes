import 'package:fashion_heroes/widgets/customized_bottom_navigation_bar.dart';
import 'package:fashion_heroes/widgets/publication_section.dart';
import 'package:fashion_heroes/widgets/story_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Discovery',
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      bottomNavigationBar:
          CustomizedBottomNavigationBar(tabController: tabController),
      body: ListView(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: const <Widget>[
          StorySection(),
          SizedBox(height: 10.0),
          PublicationSection(),
        ],
      ),
    );
  }
}
