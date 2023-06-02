import 'package:curriculum_vitae/icon_label_button.dart';
import 'package:curriculum_vitae/platform_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  String data =
      'Full-stack developer with extensive experience in Flutter and Ruby on Rails, seeking a challenging and innovative position in a tech company. Strong communication skills in English, enabling effective collaboration with diverse teams.';
  bool isMobile = true;
  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                    'Edit', Colors.white, '', Colors.white, Colors.orange),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          SizedBox(
            height: isMobile ? 20 : 50,
          ),
          const Text(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              'Christian Garcerant'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.location_solid,
                size: 20,
                color: Colors.grey[400],
              ),
              const SizedBox(width: 5),
              const Text(
                  style: TextStyle(color: Colors.grey),
                  'BARRANQUILLA, COLOMBIA '),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.bag_fill,
                size: 20,
                color: Colors.grey[400],
              ),
              const SizedBox(width: 5),
              Text(
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[400]),
                  'FullStack developer - Joyful Labs'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.chevron_left_slash_chevron_right,
                size: 20,
                color: Colors.grey[400],
              ),
              const SizedBox(width: 5),
              Text(
                  style: TextStyle(color: Colors.grey[400]),
                  'Universidad Autonoma del Caribe'),
            ],
          ),
          Divider(
            height: 30,
            thickness: 1,
            color: Colors.grey[300],
          ),
          Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[400]),
              data),
          const SizedBox(height: 10),
          TextButtons('showMore', Colors.green)
        ],
      ),
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
