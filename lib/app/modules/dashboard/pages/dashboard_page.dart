import 'package:flutter/material.dart';
import 'package:marvel_studios/app/modules/dashboard/components/dashboard_elements/dashboard_elements_page.dart';
import 'package:marvel_studios/app/modules/dashboard/components/dashboard_image/dashboard_image_opacity_page.dart';
import 'package:marvel_studios/app/modules/dashboard/components/dashboard_image/dashboard_image_poster_page.dart';
import 'package:marvel_studios/app/modules/dashboard/components/drawer/dashboard_drawer_page.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const DashboardDrawerPage(),
      body: Stack(
        children: [
          DashboardImagePosterPage(),
          DashboardImageOpacityPage(),
          DashboardElementsPage(scaffoldKey: scaffoldKey),
        ],
      ),
    );
  }
}
