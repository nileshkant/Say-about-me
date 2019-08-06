import 'package:flutter/material.dart';
import 'package:sayaboutme/components/Homepage/cardPrimary.dart';
import 'package:sayaboutme/constants/allConstant.dart';
import 'package:sayaboutme/utils/colorChanger.dart';

class CodingSkills extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'Coding ',
                  style: Theme.of(context).textTheme.display4,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Skills',
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        PrimaryCard(
          cardHeight: 80,
          stops: [0.01, 0.9],
          gradientColor: [
            // Colors are easy thanks to Flutter's Colors class.
            FlutterColor("#32CCBC"),
            FlutterColor("#90F7EC"),
          ],
          cardContent: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1, color: Colors.black45),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "Languages",
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Wrap(
                      spacing: 12.0, // gap between adjacent chips
                      runSpacing: 12.0,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: LANGUAGE
                          .map(
                            (libraries) => Text(libraries,
                                style: Theme.of(context)
                                    .textTheme
                                    .display2
                                    .copyWith(fontSize: 16)),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: PrimaryCard(
            cardHeight: 80,
            stops: [0.01, 0.9],
            gradientColor: [
              // Colors are easy thanks to Flutter's Colors class.
              FlutterColor("#32CCBC"),
              FlutterColor("#90F7EC"),
            ],
            cardContent: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1, color: Colors.black45),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "Libraries",
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                ),
                Wrap(
                  spacing: 12.0, // gap between adjacent chips
                  runSpacing: 12.0,
                  direction: Axis.vertical,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: LIBRARIES
                      .map(
                        (libraries) => Text(libraries,
                            style: Theme.of(context)
                                .textTheme
                                .display2
                                .copyWith(fontSize: 16)),
                      )
                      .toList(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
