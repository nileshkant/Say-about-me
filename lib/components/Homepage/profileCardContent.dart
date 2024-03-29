import 'package:flutter/material.dart';

class ProfileCardContent extends StatelessWidget {
  final profileCardData;
  ProfileCardContent({this.profileCardData});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.1, 0.1),
                      blurRadius: 5.0,
                    ),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(profileCardData['profilePic']),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  profileCardData['Name'],
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            profileCardData['gender'],
                            style: Theme.of(context).textTheme.display1,
                          ),
                          Text("Gender", style: Theme.of(context).textTheme.display3,),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            profileCardData['relationship'],
                            style: Theme.of(context).textTheme.display1,
                          ),
                          Text("Status", style: Theme.of(context).textTheme.display3),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            profileCardData['experience'] + "+",
                            style: Theme.of(context).textTheme.display1,
                          ),
                          Text(
                            "Exp",
                            style: Theme.of(context).textTheme.display3,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              profileCardData['email'],
                              style: Theme.of(context).textTheme.display2,
                            ),
                            Text(
                              "Email",
                              style: Theme.of(context).textTheme.display3,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
