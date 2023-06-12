import 'package:curriculum_vitae/icon_label_button.dart';
import 'package:curriculum_vitae/platform_services.dart';
import 'package:curriculum_vitae/presentation/widgets/utils/text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          TextView(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              text: 'Christian Garcerant'),
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
              TextView(color: Colors.grey, text: 'BARRANQUILLA, COLOMBIA '),
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
              TextView(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                  text: 'FullStack developer - Joyful Labs'),
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
              TextView(
                  color: Colors.grey[400],
                  text: 'Universidad Autonoma del Caribe'),
            ],
          ),
          Divider(
            height: 30,
            thickness: 1,
            color: Colors.grey[300],
          ),
          TextView(
              textAlign: TextAlign.center, color: Colors.grey[400], text: data),
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
            TextView(
              text: '$value',
              color: Colors.grey[900],
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            TextView(
                text: label,
                color: Colors.grey[900],
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ],
        ),
      );
}
