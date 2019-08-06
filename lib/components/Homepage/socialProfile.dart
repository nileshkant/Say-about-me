import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialProfile extends StatelessWidget {
  final String tooltip;
  final String appUrl;
  final String website;
  final IconData socialIcon;
  final Color iconColor;

  SocialProfile({this.tooltip, this.appUrl, this.website, this.socialIcon, this.iconColor});

  _launchURL(urlLink, alternativeUrl) async {
    String url = urlLink;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      await launch(alternativeUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(socialIcon),
        color: iconColor,
        iconSize: 32,
        tooltip: tooltip,
        onPressed: () {
          _launchURL(appUrl, website);
        },
      ),
    );
  }
}
