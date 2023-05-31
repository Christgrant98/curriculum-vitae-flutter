import 'package:curriculum_vitae/platform_services.dart';
import 'package:flutter/widgets.dart';

class TopBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double maxWidht = MediaQuery.of(context).size.width;
    return Container(
      width: maxWidht,
      height: PlatFormServices.isMobile(context) ? 300 : 450,
      child: Image.asset(
        'assets/landscape.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
