import 'package:curriculum_vitae/footer_panel.dart';
import 'package:curriculum_vitae/header_panel.dart';
import 'package:curriculum_vitae/profile_panel.dart';
import 'package:curriculum_vitae/top_background.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget content;
  const Layout({Key? key, required this.content});

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidht = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: Colors.amberAccent,
          body: SafeArea(
            child: Stack(
              children: [
                TopBackground(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeaderPanel(),
                      ProfilePanel(),
                      FooterPanel(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
