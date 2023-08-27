import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text('Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/1.jpg'),
                radius: 30,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First and Last Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('Something else that you want to share',
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Images Published:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          SizedBox(height: 10.0),
          ImagesPublished(),
        ],
      ),
    );
  }
}

class ImagesPublished extends StatelessWidget {
  const ImagesPublished({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: double.infinity,
      child: MasonryGridView.count(
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/${index % 5 + 1}.jpg'),
          );
        },
      ),
    );
  }
}
