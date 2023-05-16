import 'package:flutter/material.dart';
import 'package:marvel_studios/app/core/style/size.dart';
import 'package:marvel_studios/app/core/style/text.dart';

class WarningPage extends StatelessWidget {
  const WarningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error!!"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(context.heightLength(.02)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ops, algo ocorreu de errado!',
                style: TextStyle().textBold(18),
              ),
              SizedBox(
                height: context.heightLength(.02),
              ),
              Image.asset(
                "assets/images/spider_man.png",
                height: context.heightLength(.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
