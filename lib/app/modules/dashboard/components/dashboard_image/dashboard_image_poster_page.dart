import 'package:flutter/material.dart';

class DashboardImagePosterPage extends StatelessWidget {
  const DashboardImagePosterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        image: new DecorationImage(
          fit: BoxFit.cover,
          image: const AssetImage("assets/images/marvel_poster.jpg"),
        ),
      ),
    );
  }
}
