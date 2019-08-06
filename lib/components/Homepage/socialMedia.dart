import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sayaboutme/components/Homepage/socialProfile.dart';
import 'package:sayaboutme/constants/allConstant.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 1, color: Colors.black45),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Social",
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            ),
            SocialProfile(
              socialIcon: Ionicons.getIconData("logo-facebook"),
              iconColor: Colors.blue[900],
              tooltip: FACEBOOK_TOOLTIP,
              appUrl: FACEBOOK_APP,
              website: FACEBOOK_WEBSITE,
            ),
            SocialProfile(
              socialIcon: Ionicons.getIconData("logo-twitter"),
              tooltip: TWITTER_TOOLTIP,
              appUrl: TWITTER_APP,
              website: TWITTER_WEBSITE,
              iconColor: Colors.blue,
            ),
            SocialProfile(
              socialIcon: Ionicons.getIconData("logo-instagram"),
              tooltip: INSTAGRAM_TOOLTIP,
              appUrl: INSTAGRAM_APP,
              website: INSTAGRAM_WEBSITE,
              iconColor: Colors.redAccent,
            ),
            SocialProfile(
              socialIcon: Ionicons.getIconData("logo-github"),
              tooltip: GITHUB_TOOLTIP,
              appUrl: GITHUB_APP,
              website: GITHUB_WEBSITE,
              iconColor: Colors.red[900],
            ),
            SocialProfile(
              socialIcon: Ionicons.getIconData("logo-linkedin"),
              tooltip: LINKEDIN_TOOLTIP,
              appUrl: LINKEDIN_APP,
              website: LINKEDIN_WEBSITE,
              iconColor: Colors.blue[800],
            ),
          ],
        ),
      );
  }
}
