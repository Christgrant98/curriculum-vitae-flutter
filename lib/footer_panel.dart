import 'package:curriculum_vitae/icon_label_button.dart';
import 'package:curriculum_vitae/platform_services.dart';
import 'package:curriculum_vitae/presentation/widgets/utils/text_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterPanel extends StatelessWidget {
  bool isMobile = true;
  bool isDesktop = true;

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    isDesktop = PlatFormServices.isDesktop(context) ? true : false;

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: isMobile ? 0 : maxWidth / 10,
          vertical: isMobile ? 0 : 20),
      padding: EdgeInsets.all(isMobile ? 5 : 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isMobile
              ? const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))
              : BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 5,
                spreadRadius: 2)
          ]),
      child: isDesktop
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [SocialNetwork(), WebInfo()],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SocialNetwork(), WebInfo()],
            ),
    );
  }

  Widget SocialNetwork() => Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextView(text: 'Lets keep in touch!'),
            const TextView(text: 'Find me on any of these platform.'),
            const SizedBox(height: 10),
            Row(
              children: [
                if (!isDesktop) const Spacer(flex: 1),
                FloatingIconsButtons('assets/github-mark.svg'),
                FloatingIconsButtons('assets/linkedin.svg'),
                FloatingIconsButtons('assets/color-whatsapp.svg'),
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

  Widget WebInfo() => Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UsefulLinks(),
            isMobile ? const Spacer(flex: 1) : const SizedBox(width: 50),
            OtherResources()
          ],
        ),
      );

  Widget UsefulLinks() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextView(
            text: 'CONTACT LINKS',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
          TextButtons('About me', Colors.grey),
          TextButtons('Github', Colors.grey),
          TextButtons('Linkedin', Colors.grey),
        ],
      );

  Widget OtherResources() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextView(
            text: 'PERSONAL REFERENCES',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
          TextButtons('About me', Colors.grey),
          TextButtons('Github', Colors.grey),
          TextButtons('Linkedin', Colors.grey),
        ],
      );
}
