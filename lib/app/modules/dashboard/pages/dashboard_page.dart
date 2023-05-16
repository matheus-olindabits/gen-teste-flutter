import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_studios/app/core/style/text.dart';
import 'package:marvel_studios/app/core/style/size.dart';
import 'package:marvel_studios/app/core/style/color.dart';
import 'package:marvel_studios/app/modules/dashboard/pages/dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _controller = Modular.get<DashboardController>();

  @override
  void initState() {
    super.initState();
    _controller.listMarvelProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: const AssetImage("assets/images/marvel_poster.jpg"),
              ),
            ),
          ),
          Container(
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
          ),
          SafeArea(
              child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              height: context.heightWithoutStatusBar,
              child: Padding(
                padding: EdgeInsets.all(
                  context.heightLength(.02),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: context.heightLength(.1),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onPressed: () =>
                                  {}, //scaffoldKey.currentState?.openDrawer(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/logo.png",
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MARVEL\nCINEMATIC\nUNIVERSE',
                          style:
                              const TextStyle().textExtraBold(30, Colors.white),
                        ),
                        SizedBox(height: context.heightLength(.05)),
                        Text(
                          'LINHA DO TEMPO',
                          style: const TextStyle().textBold(12, Colors.white),
                        ),
                        Container(
                          //color: Colors.red,
                          height: context.heightLength(.4),
                          child: ListView.separated(
                              itemCount: _controller.marvelProducts.length,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder:
                                  (BuildContext context, int index) => SizedBox(
                                        width: context.widthLength(.03),
                                      ),
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Observer(builder: (context) {
                                  return Container(
                                    width: context.widthLength(.35),
                                    child: FittedBox(
                                      child: Column(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height:
                                                    context.heightLength(.02),
                                              ),
                                              Container(
                                                height:
                                                    context.heightLength(.3),
                                                width: context.widthLength(.35),
                                                decoration: const BoxDecoration(
                                                  color: WColor.colorPrimary,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(10.0),
                                                  ),
                                                  image: DecorationImage(
                                                    image: const AssetImage(
                                                        "assets/images/marvel_poster.jpg"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height:
                                                    context.heightLength(.01),
                                              ),
                                              Container(
                                                width: context.widthLength(.3),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      _controller
                                                          .marvelProducts[index]
                                                          .originalTitle,
                                                      style: const TextStyle()
                                                          .textRegular(
                                                              12, Colors.white),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                    SizedBox(
                                                        height: context
                                                            .heightLength(.01)),
                                                    Text(
                                                      '2017',
                                                      style: const TextStyle()
                                                          .textRegular(
                                                        12,
                                                        Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
