import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[HomeScreeTopPart(), HomeScreenBottomPart()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xffe52020),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Color(0xffe52020)),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                title: Text(
                  'Search',
                  style: TextStyle(),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                ),
                title: Text(
                  'Bookmark',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                title: Text(
                  'Profile',
                )),
          ]),
    );
  }
}

class HomeScreeTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 370,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10),
                    blurRadius: 10)
              ]),
              child: Stack(
                children: <Widget>[
                  Image.asset('images/punisher3.jpg',
                      fit: BoxFit.cover, width: double.infinity),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0x00000000),
                            const Color(0xd9333333)
                          ],
                          stops: [
                            0.0,
                            0.9
                          ],
                          begin: FractionalOffset(0.0, 0.0),
                          end: FractionalOffset(0.0, 1.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 120, left: 95),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'WATCH BEFORE EVERYONE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'The Punisher: Season 2',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 370,
            right: -20,
            child: FractionalTranslation(
              translation: Offset(0.0, -0.5),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Color(0xffe52020),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffe52020),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Watch Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(width: 10),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreenBottomPart extends StatelessWidget {
  List<String> images = [
    'images/infinitywars.jpg',
    'images/blackpanther.jpg',
    'images/runaways.jpg'
  ];

  List<String> titles = ['Avengers: infinity war', 'Black Panther', 'Runaways'];

  List<Widget> movies() {
    List<Widget> movieList = List();

    for (int i = 0; i < 3; i++) {
      var movieitem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 12),
        child: Container(
          height: 220,
          width: 135,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  images[i],
                  width: double.infinity,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
                child: Text(
                  titles[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3),
                child: Text(i == 2 ? 'Season 2' : ''),
              )
            ],
          ),
        ),
      );
      movieList.add(movieitem);
    }
    return movieList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      margin: EdgeInsets.only(left: 65),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Watch now',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                ),
                FlatButton(
                  child: Text('View more'),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: movies(),
            ),
          )
        ],
      ),
    );
  }
}

class Mclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100);

    var controlpoint = Offset(35, size.height);
    var endpoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
