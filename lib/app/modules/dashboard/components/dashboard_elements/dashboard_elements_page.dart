import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_studios/app/core/helpers/helper.dart';
import 'package:marvel_studios/app/core/style/color.dart';
import 'package:marvel_studios/app/core/style/size.dart';
import 'package:marvel_studios/app/core/style/text.dart';
import 'package:marvel_studios/app/modules/dashboard/pages/dashboard_controller.dart';

// ignore: must_be_immutable
class DashboardElementsPage extends StatefulWidget {
  GlobalKey<ScaffoldState> scaffoldKey;
  DashboardElementsPage({Key? key, required this.scaffoldKey})
      : super(key: key);

  @override
  State<DashboardElementsPage> createState() => _DashboardElementsPageState();
}

class _DashboardElementsPageState extends State<DashboardElementsPage> {
  final _controller = Modular.get<DashboardController>();

  @override
  void initState() {
    super.initState();
    _controller.listMarvelProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                              widget.scaffoldKey.currentState?.openDrawer(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/logo_white.png",
                          height: context.heightLength(.03),
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
                      style: const TextStyle().textExtraBold(30, Colors.white),
                    ),
                    SizedBox(height: context.heightLength(.05)),
                    Text(
                      'LINHA DO TEMPO',
                      style: const TextStyle().textBold(12, Colors.white),
                    ),
                    Observer(
                      builder: (context) {
                        return Container(
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
                              final item = _controller.marvelProducts[index];
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
                                            height: context.heightLength(.02),
                                          ),
                                          Container(
                                            height: context.heightLength(.3),
                                            width: context.widthLength(.35),
                                            decoration: const BoxDecoration(
                                              color: WColor.colorPrimary,
                                              borderRadius: BorderRadius.all(
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
                                            height: context.heightLength(.01),
                                          ),
                                          Container(
                                            width: context.widthLength(.3),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  item.originalTitle,
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
                                                  Helper.getYearInDate(
                                                      item.releaseDate),
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
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
