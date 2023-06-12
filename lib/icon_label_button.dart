import 'package:curriculum_vitae/presentation/widgets/utils/text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget IconLabelButtons(String lebel, String path) => TextButton.icon(
      onPressed: () => print('pressed'),
      icon: SvgPicture.asset(
        path,
        width: 20,
      ),
      label: TextView(text: lebel, color: Colors.white),
    );

Widget TextButtons(String label, Color color) => TextButton(
    child: TextView(
      text: label,
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    onPressed: () {});

Widget LogoButton(String path) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    child: IconButton(
        icon: SvgPicture.asset(path, width: 15, color: Colors.white),
        onPressed: () {}));

Widget NormalButton(String label, Color txtcolor, String path, Color iconColor,
        Color backColor) =>
    InkWell(
      onTap: () {},
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
              color: backColor, borderRadius: BorderRadius.circular(5)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            if (path != '') Image.asset(path, color: iconColor, width: 15),
            if (path != '') const SizedBox(width: 5),
            TextView(
                text: label,
                fontSize: 10,
                color: txtcolor,
                fontWeight: FontWeight.w700)
          ])),
    );

Widget ColorLogoButton(String path) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 3),
    child:
        IconButton(icon: SvgPicture.asset(path, width: 20), onPressed: () {}));
