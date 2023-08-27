import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const <Widget>[
          ListItem(image: 'assets/images/1.jpg', logo: 'assets/images/2.jpg'),
          ListItem(image: 'assets/images/2.jpg', logo: 'assets/images/1.jpg'),
          ListItem(image: 'assets/images/3.jpg', logo: 'assets/images/2.jpg'),
          ListItem(image: 'assets/images/2.jpg', logo: 'assets/images/2.jpg'),
          ListItem(image: 'assets/images/1.jpg', logo: 'assets/images/2.jpg'),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String image, logo;
  const ListItem({
    super.key,
    required this.image,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 37.5,
              ),
              Positioned(
                left: 50,
                top: 50.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage(logo),
                  radius: 12.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 30,
            width: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), color: Colors.brown),
            child: const Center(
              child: Text(
                'Follow',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
