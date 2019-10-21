import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:travels_app/placeDetails.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Jan 2019',
                      style: TextStyle(
                          fontFamily: 'AbrilFatface',
                          color: Colors.white,
                          fontSize: 28.0,
                          shadows: [
                            Shadow(
                                blurRadius: 5.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(5.0, 6.0))
                          ]),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        MdiIcons.menu,
                        color: Colors.white,
                        size: 28.0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(0, 0, 0, 0.7),
                      prefixIcon: IconButton(
                        onPressed: null,
                        color: Colors.white,
                        icon: Icon(MdiIcons.magnify),
                        iconSize: 28.0,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 35.0, vertical: 18.0),
                      hintText: 'See what you think',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).accentColor.withOpacity(0.4),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                ),
              ),
              SizedBox(height: 25.0),
              SizedBox(
                width: double.infinity,
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Options(
                        title: 'Travel',
                        icon: MdiIcons.walletTravel,
                        active: false,
                      ),
                    ),
                    Options(
                      title: 'Sports',
                      icon: MdiIcons.runFast,
                      active: false,
                    ),
                    Options(
                      title: 'Scenery',
                      icon: MdiIcons.imageArea,
                      active: true,
                    ),
                    Options(
                      title: 'Video',
                      icon: MdiIcons.videoOutline,
                      active: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Scenery',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'AbrilFatface',
                          color: Colors.white,
                          fontSize: 28.0,
                          shadows: [
                            Shadow(
                                blurRadius: 5.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(5.0, 6.0))
                          ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: SceneryItem(
                        image: 'assets/images/exp_1.jpg',
                        title: 'Neist Point LightHouse',
                        id: 1,
                      ),
                    ),
                    SceneryItem(
                      image: 'assets/images/exp_2.jpg',
                      title: 'Snow Mountain',
                      id: 2,
                    ),
                    SceneryItem(
                      image: 'assets/images/exp_3.jpg',
                      title: 'Golden Gate Bridge',
                      id: 3,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: GalerryItem(image: 'assets/images/exp_5.jpeg'),
                    ),
                    GalerryItem(image: 'assets/images/exp_4.jpg'),
                    GalerryItem(image: 'assets/images/exp_6.jpg'),
                    GalerryItem(image: 'assets/images/exp_7.jpg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool active;

  Options({this.title, this.icon, this.active});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: (!active)
                  ? Colors.white.withOpacity(0.2)
                  : Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 38.0,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            title,
            style:
                TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 20.0),
          )
        ],
      ),
    );
  }
}

class SceneryItem extends StatelessWidget {
  final String image;
  final String title;
  final int id;

  SceneryItem({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => PlaceDetailsScreen(
                  image: image,
                  title: title,
                  id: id,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: "scenery${id}",
                child: Image(
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.4), fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

class GalerryItem extends StatelessWidget {
  final String image;

  GalerryItem({this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image(
              width: 180.0,
              height: 180.0,
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          )
        ],
      ),
    );
  }
}
