import 'package:flutter/material.dart';

class DashboardImageOpacityPage extends StatelessWidget {
  const DashboardImageOpacityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.0),
            Colors.black,
          ],
          stops: [-0.8, 0.95],
        ),
      ),
    );
  }
}
