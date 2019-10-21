import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PlaceDetailsScreen extends StatefulWidget {
  final String image;
  final String title;
  final int id;

  PlaceDetailsScreen({this.image, this.title, this.id});

  @override
  _PlaceDetailsScreenState createState() => _PlaceDetailsScreenState();
}

class _PlaceDetailsScreenState extends State<PlaceDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 400.0,
                  child: Hero(
                      tag: 'scenery${widget.id}',
                      child: Image.asset(widget.image, fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: SafeArea(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80.0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Go Back',
                                style: TextStyle(
                                    fontFamily: 'AbrilFatface',
                                    color: Colors.white,
                                    fontSize: 28.0),
                              ),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(
                                MdiIcons.dotsHorizontal,
                                color: Colors.white,
                                size: 28.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 320.0),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 30.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(64, 52, 87, 0.5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.title,
                                style: TextStyle(
                                    fontFamily: 'AbrilFatface',
                                    color: Colors.white,
                                    fontSize: 28.0),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula diam sem...',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 16.0),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                children: <Widget>[
                                  Icon(MdiIcons.star,
                                      color: Colors.yellow[700], size: 20.0),
                                  Icon(MdiIcons.star,
                                      color: Colors.yellow[700], size: 20.0),
                                  Icon(MdiIcons.star,
                                      color: Colors.yellow[700], size: 20.0),
                                  Icon(MdiIcons.star,
                                      color: Colors.yellow[700], size: 20.0),
                                  Icon(MdiIcons.star,
                                      color: Colors.white.withOpacity(0.2),
                                      size: 20.0),
                                  Spacer(),
                                  FlatButton.icon(
                                    disabledColor:
                                        Color.fromRGBO(64, 52, 87, 1),
                                    icon: Icon(
                                      MdiIcons.mapMarker,
                                      color: Colors.white,
                                      size: 18.0,
                                    ),
                                    label: Text('Lodon',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0)),
                                    onPressed: null,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                height: 145.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image(
                              width: 30.0,
                              image: AssetImage('assets/images/exp_8.jpg'),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'JonathanSC',
                            style: TextStyle(
                                color: Color.fromRGBO(64, 52, 87, 0.8),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            '- 1 Hour Ago',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: null,
                            icon: Icon(
                              MdiIcons.dotsVertical,
                              color: Colors.grey[400],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula diam sem, consectetur adipiscing elit...',
                        style:
                            TextStyle(color: Colors.grey[400], fontSize: 16.0),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(5.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  MdiIcons.heart,
                                  color: Colors.red,
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                'Like',
                                style: TextStyle(
                                    color: Color.fromRGBO(64, 52, 87, 0.8),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  MdiIcons.message,
                                  color: Color.fromRGBO(64, 52, 87, 0.8),
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                'Message',
                                style: TextStyle(
                                    color: Color.fromRGBO(64, 52, 87, 0.8),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  MdiIcons.shareVariant,
                                  color: Color.fromRGBO(64, 52, 87, 0.8),
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                'Share',
                                style: TextStyle(
                                    color: Color.fromRGBO(64, 52, 87, 0.8),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}
