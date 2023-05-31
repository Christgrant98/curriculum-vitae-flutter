import 'package:curriculum_vitae/platform_services.dart';
import 'package:curriculum_vitae/profile_card.dart';
import 'package:flutter/material.dart';

class ProfilePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMobile = PlatFormServices.isMobile(context) ? true : false;
    double maxWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.fromLTRB(isMobile ? 15 : maxWidth / 10,
          isMobile ? 0 : 150, isMobile ? 15 : maxWidth / 10, 10),
      child: Stack(
        children: [
          ProfileCard(),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: ProfileImage(),
            ),
          )
        ],
      ),
    );
  }

  Widget ProfileImage() => const CircleAvatar(
        backgroundImage: AssetImage('assets/profile.jpg'),
        radius: 70,
      );
}
