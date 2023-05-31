import 'package:curriculum_vitae/platform_services.dart';
import 'package:curriculum_vitae/profile_info.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return Container(
      width: maxWidth,
      margin: EdgeInsets.only(top: 70),
      padding: EdgeInsets.fromLTRB(
          10, PlatFormServices.isMobile(context) ? 80 : 20, 10, 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 5,
                spreadRadius: 2)
          ]),
      child: ProfileInfo(),
    );
  }
}
