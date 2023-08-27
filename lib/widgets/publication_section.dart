import 'package:fashion_heroes/pages/details.dart';
import 'package:flutter/material.dart';

class PublicationSection extends StatelessWidget {
  const PublicationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PublicationItem(),
        SizedBox(height: 10.0),
        // PublicationItem(),
      ],
    );
  }
}

class PublicationItem extends StatelessWidget {
  const PublicationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        elevation: 4.0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 120,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Daisy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0)),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('34 min ago',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15.0)),
                          ],
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              const Text(
                'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const DetailsPage(
                                        tag: 'assets/images/4.jpg')));
                      },
                      child: Hero(
                        tag: 'assets/images/4.jpg',
                        child: Container(
                          width: MediaQuery.of(context).size.width - 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/4.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const DetailsPage(
                                            tag: 'assets/images/5.jpg')));
                          },
                          child: Hero(
                            tag: 'assets/images/5.jpg',
                            child: Container(
                              height: 120,
                              width: 122.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/images/5.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const DetailsPage(
                                            tag: 'assets/images/3.jpg')));
                          },
                          child: Hero(
                            tag: 'assets/images/3.jpg',
                            child: Container(
                              height: 120,
                              width: 122.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/images/3.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[700]!.withOpacity(0.3)),
                    child: const Center(
                      child: Text('# Louis vuitton'),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[700]!.withOpacity(0.3)),
                    child: const Center(
                      child: Text('# Chloe'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
