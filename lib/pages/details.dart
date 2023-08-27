import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String tag;
  const DetailsPage({super.key, required this.tag});
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.tag,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.tag), fit: BoxFit.cover)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.white,
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    height: 260.0,
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 0.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width - 250,
                              height: 150,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(20.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'LAMINATED',
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    'Louis vuitton',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'One button V-neck sling long sleeved waist female stitching dress',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.grey),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Divider(
                          color: Colors.grey.withOpacity(0.5),
                          thickness: 0.8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              '\$6500',
                              style: TextStyle(
                                fontSize: 28.0,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.brown),
                              child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ),
          Positioned(
            bottom: 400,
            left: 40,
            child: Container(
              height: 42,
              width: 180,
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black.withOpacity(0.5),
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'LAMINATED',
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
