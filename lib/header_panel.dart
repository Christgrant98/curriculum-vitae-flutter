import 'package:curriculum_vitae/icon_label_button.dart';
import 'package:flutter/material.dart';
import 'platform_services.dart';

class HeaderPanel extends StatelessWidget {
  bool isMobile = true;

  HeaderPanel({super.key});

  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    double maxWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: maxWidth / 10, vertical: isMobile ? 30 : 10),
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                leftSidePanel(),
                RightSidePanel(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leftSidePanel(),
                RightSidePanel(),
              ],
            ),
    );
  }

  Widget leftSidePanel() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Curriculum Vitae',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .5)),
          isMobile ? const Spacer(flex: 1) : const SizedBox(width: 50),
          IconLabelButtons('DOCS', 'assets/document.svg')
        ],
      );

  Widget RightSidePanel() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoButton('assets/linkedin.svg'),
          // Image.asset('assets/github-mark.png'),
          NormalButton('GitHub', Colors.grey, 'assets/github-mark.png',
              Colors.grey, Colors.white),
          NormalButton('Download', Colors.grey, 'assets/download.png',
              Colors.grey, Colors.white)
        ],
      );
}
