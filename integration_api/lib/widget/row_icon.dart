
import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RowIcon extends StatelessWidget {
  const RowIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: Icon(
            MdiIcons.gmail,
            color: Colors.purple.shade900,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: Icon(
            AkarIcons.linkedin_box_fill,
            color: Colors.purple.shade900,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: Icon(
            AkarIcons.github_fill,
            color: Colors.purple.shade900,
          ),
        ),
      ],
    );
  }
}
