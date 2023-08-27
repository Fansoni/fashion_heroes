import 'package:fashion_heroes/pages/profile.dart';
import 'package:flutter/material.dart';

class CustomizedBottomNavigationBar extends StatelessWidget {
  const CustomizedBottomNavigationBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      indicatorColor: Colors.transparent,
      onTap: (value) {
        if (value == 3) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ProfilePage();
          }));
        }
      },
      tabs: const <Widget>[
        Tab(
            icon: Icon(
          Icons.more,
          color: Colors.grey,
        )),
        Tab(
            icon: Icon(
          Icons.arrow_right,
          color: Colors.grey,
        )),
        Tab(
            icon: Icon(
          Icons.location_on,
          color: Colors.black,
        )),
        Tab(
            icon: Icon(
          Icons.person_pin,
          color: Colors.grey,
        )),
      ],
    );
  }
}
