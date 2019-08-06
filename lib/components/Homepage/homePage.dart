import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sayaboutme/components/Homepage/codingSkill.dart';
import 'package:sayaboutme/components/Homepage/workedProject.dart';
import 'package:sayaboutme/utils/colorChanger.dart';

import 'cardPrimary.dart';
import 'profileCardContent.dart';
import 'socialMedia.dart';

class MyHomePage extends StatelessWidget {
  _updateProfile(String text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
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
          if (!snapshot.hasData) return SpinKitHourGlass(color: Colors.white);
          return LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    children: <Widget>[
                      PrimaryCard(
                        parentAction: _updateProfile,
                        cardHeight: 180,
                        stops: [0.1, 0.9],
                        gradientColor: [
                          // Colors are easy thanks to Flutter's Colors class.
                          FlutterColor("#037ADE"),
                          FlutterColor("#03E5B7"),
                        ],
                        cardContent: ProfileCardContent(
                            profileCardData: snapshot.data.documents[0]),
                      ),
                      SocialMedia(),
                      CodingSkills(),
                      WorkedProjects()
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
