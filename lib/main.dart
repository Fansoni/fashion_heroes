import 'package:flutter/material.dart';
import 'package:fashionheroes/details.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/' : (BuildContext context) => MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with TickerProviderStateMixin {
  AnimationController _controller;

  TabController tabController;

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
        title: Text(
          'Discovery',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.camera_alt, color: Colors.black), onPressed: (){},),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      bottomNavigationBar: TabBar(
        controller: tabController,
        indicatorColor: Colors.transparent,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.more, color: Colors.grey,)),
          Tab(icon: Icon(Icons.arrow_right, color: Colors.grey,)),
          Tab(icon: Icon(Icons.location_on, color: Colors.black,)),
          Tab(icon: Icon(Icons.person_pin, color: Colors.grey,)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                ListItem(image: 'assets/images/1.jpg', logo: 'assets/images/2.jpg'),
                ListItem(image: 'assets/images/2.jpg', logo: 'assets/images/1.jpg'),
                ListItem(image: 'assets/images/3.jpg', logo: 'assets/images/2.jpg'),
                ListItem(image: 'assets/images/2.jpg', logo: 'assets/images/2.jpg'),
                ListItem(image: 'assets/images/1.jpg', logo: 'assets/images/2.jpg'),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Card(
              elevation: 4.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          width: MediaQuery.of(context).size.width - 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Daisy',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0
                                    )
                                  ),
                                  SizedBox(height: 6.0,),
                                  Text(
                                    '34 min ago',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15.0
                                    )
                                  ),
                                ],
                              ),
                              Icon(Icons.more_vert),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width - 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) => DetailsPage('assets/images/4.jpg')
                              ));
                            },
                            child: Hero(
                              tag: 'assets/images/4.jpg',
                              child: Container(
                                width: MediaQuery.of(context).size.width - 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/4.jpg'),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => DetailsPage('assets/images/5.jpg')
                                  ));
                                },
                                child: Hero(
                                  tag: 'assets/images/5.jpg',
                                  child: Container(
                                    height: 120,
                                    width: 122.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/5.jpg'),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) => DetailsPage('assets/images/3.jpg')
                                  ));
                                },
                                child: Hero(
                                  tag: 'assets/images/3.jpg',
                                  child: Container(
                                    height: 120,
                                    width: 122.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/3.jpg'),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[700].withOpacity(0.3)
                          ),
                          child: Center(
                            child: Text('# Louis vuitton'),
                          ),
                        ),
                        SizedBox(width: 15.0,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[700].withOpacity(0.3)
                          ),
                          child: Center(
                            child: Text('# Chloe'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final image, logo;
  const ListItem({
    Key key, this.image, this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(37.5),
                    image: DecorationImage(
                      image: AssetImage(this.image),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50.0,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      image: DecorationImage(
                        image: AssetImage(this.logo),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 30,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.brown
            ),
            child: Center(
              child: Text(
                'Follow',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}