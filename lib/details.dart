import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final tag;
  DetailsPage(this.tag);
  @override
  _DetailsPageState createState() => _DetailsPageState(this.tag);
}

class _DetailsPageState extends State<DetailsPage> {
  final pageTag;
  _DetailsPageState(this.pageTag);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: this.pageTag,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(this.pageTag),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  height: 260.0,
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0,),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width - 250,
                            height: 150,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/1.jpg'),
                                fit: BoxFit.contain
                              )
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            width: MediaQuery.of(context).size.width - 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'LAMINATED',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 6.0,),
                                Text(
                                  'Louis vuitton',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey
                                  ),
                                ),
                                SizedBox(height: 16.0,),
                                Text(
                                  'One button V-neck sling long sleeved waist female stitching dress',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        height: 1.0,
                        width: MediaQuery.of(context).size.width - 40,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
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
                              color: Colors.brown
                            ),
                            child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            left: 40,
            child: Container(
              height: 42,
              width: 180,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'LAMINATED',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
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