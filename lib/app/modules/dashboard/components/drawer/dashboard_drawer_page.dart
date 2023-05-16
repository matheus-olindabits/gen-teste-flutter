import 'package:flutter/material.dart';
import 'package:marvel_studios/app/core/style/color.dart';
import 'package:marvel_studios/app/core/style/size.dart';

class DashboardDrawerPage extends StatelessWidget {
  const DashboardDrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: context.height,
            color: WColor.colorPrimary,
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: context.heightLength(.05),
              ),
            ),
          )
        ],
      ),
    );
  }
}
