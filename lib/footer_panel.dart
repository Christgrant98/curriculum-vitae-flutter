import 'package:curriculum_vitae/icon_label_button.dart';
import 'package:curriculum_vitae/platform_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterPanel extends StatelessWidget {
  bool isMobile = true;
  bool isDesktop = true;

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    isDesktop = PlatFormServices.isMobile(context) ? true : false;

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: isMobile ? 0 : maxWidth / 10,
          vertical: isMobile ? 0 : 20),
      padding: EdgeInsets.all(isMobile ? 5 : 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isMobile
              ? const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))
              : BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 5,
                spreadRadius: 2)
          ]),
      child: isDesktop ? Row() : Column(),
    );
  }

  Widget SocialNetwork() => Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Lets keep in touch!'),
            const Text('Find me on any of these platform.'),
            const SizedBox(height: 10),
            Row(
              children: [
                if (!isDesktop) const Spacer(flex: 1),
                FloatingIconsButtons('assets/github-mark.svg'),
                FloatingIconsButtons('assets/linkedin.svg'),
                FloatingIconsButtons('assets/github-mark.svg'),
                if (!isDesktop) const Spacer(flex: 1)
              ],
            )
          ],
        ),
      );

  Widget FloatingIconsButtons(String path) => Container(
        margin: const EdgeInsets.all(5),
        height: 40,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: ColorLogoButton(path),
          onPressed: () {},
        ),
      );
}

Widget WebInfo() => Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('CONTACT LINKS'),
          TextButtons('About me', Colors.grey[900]!),
          TextButtons('Github', Colors.grey[900]!),
          TextButtons('Linkedin', Colors.grey[900]!),
        ],
      ),
    );

Widget UsefulLinks() => Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('CONTACT LINKS'),
          TextButtons('About me', Colors.grey[900]!),
          TextButtons('Github', Colors.grey[900]!),
          TextButtons('Linkedin', Colors.grey[900]!),
        ],
      ),
    );
