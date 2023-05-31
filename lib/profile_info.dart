import 'package:curriculum_vitae/icon_label_button.dart';
import 'package:curriculum_vitae/platform_services.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  String data =
      'Full-stack developer with extensive experience in Flutter and Ruby on Rails, seeking a challenging and innovative position in a tech company. Strong communication skills in English, enabling effective collaboration with diverse teams.';
  bool isMobile = true;
  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              SocialValue('Friends', 12),
              SocialValue('Projects', 3),
              SocialValue('Comments', 2),
              const Spacer(flex: 10),
              NormalButton(
                  'Edit', Colors.white, '', Colors.white, Colors.orange)
            ],
          ),
        )
      ]),
    );
  }

  Widget SocialValue(String label, int value) => Container(
        padding: const EdgeInsets.all(5),
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$value',
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              label,
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}
