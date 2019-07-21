import 'package:flutter/material.dart';
import 'package:sayaboutme/components/cardPrimary.dart';
import 'package:sayaboutme/components/profileCardContent.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sayaboutme/components/colorChanger.dart';

class MyHomePage extends StatelessWidget {
  _updateProfile(String text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('My profile'),
        ),
        body: StreamBuilder(
          stream: Firestore.instance.collection('my_profile').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text("loading... ");
            return Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                children: <Widget>[
                  PrimaryCard(
                    parentAction: _updateProfile,
                    cardHeight: 180,
                    cardWidth: width - 30,
                    stops: [0.1, 0.9],
                    gradientColor: [
                      // Colors are easy thanks to Flutter's Colors class.
                      FlutterColor("#037ADE"),
                      FlutterColor("#03E5B7"),
                    ],
                    cardContent: ProfileCardContent(
                        profileCardData: snapshot.data.documents[0]),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: PrimaryCard(
                            parentAction: _updateProfile,
                            cardHeight: width / 3,
                            stops: [0.1, 0.9],
                            gradientColor: [
                              // Colors are easy thanks to Flutter's Colors class.
                              FlutterColor("#FE5858"),
                              FlutterColor("#EE9617"),
                            ],
                            cardContent: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/creative.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Profile',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: PrimaryCard(
                              parentAction: _updateProfile,
                              cardHeight: width / 3,
                              stops: [0.1, 0.9],
                              gradientColor: [
                                // Colors are easy thanks to Flutter's Colors class.
                                FlutterColor("#EB6B9D"),
                                FlutterColor("#EE8C68"),
                              ],
                              cardContent: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                          'assets/images/poem_white.png',
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Poems',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: PrimaryCard(
                              stops: [
                                0.1,
                                0.9
                              ],
                              gradientColor: [
                                // Colors are easy thanks to Flutter's Colors class.
                                FlutterColor("#F67062"),
                                FlutterColor("#FC5296"),
                              ],
                              parentAction: _updateProfile,
                              cardHeight: width / 3,
                              cardContent: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5.0),
                                        child: Image.asset(
                                          'assets/images/camera_white.png',
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Photos',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
