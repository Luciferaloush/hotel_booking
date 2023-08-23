import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/db/dbColor.dart';
import 'package:hotel_booking/db/dbIcons.dart';
import 'package:hotel_booking/db/dbStrings.dart';
import 'package:hotel_booking/model/dBModel.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: dbWhite,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dbHiAli.toString(),
                        style: TextStyle(color: dbColorPrimary, fontSize: 20),
                      ),
                      Icon(
                        dbIconSearch,
                        color: dbColorIcon,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        dbYouAreIn54KingPorts,
                        style: TextStyle(
                            color: dbTextColorSecondary, fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: mListing1.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: dbLightBlue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Image.asset(
                                      mListing1[index].img.toString(),
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  mListing1[index].name.toString(),
                                  style: TextStyle(color: dbTextColorSecondary),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Divider(
                    height: 4,
                    color: dbTextColorSecondary,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          dbBestDestination.toUpperCase(),
                          style: TextStyle(color: dbColorPrimary, fontSize: 24),
                        ),
                        Text(
                          dbSeeAll.toUpperCase(),
                          style: TextStyle(color: dbTextColorSecondary),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: double.maxFinite,
                    child: Container(
                      height: height,
                      width: width,
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: StaggeredGridView.countBuilder(
                        crossAxisCount: 4,
                        itemCount: mListing.length,
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          margin: EdgeInsets.only(left: 4, bottom: 4, top: 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(mListing[index].img.toString()),
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        mListing[index].name.toString(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Container(
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 4, 10, 4),
                                          child: RichText(
                                            text: TextSpan(
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2,
                                                children: [
                                                  WidgetSpan(
                                                      child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 4.0),
                                                    child: Icon(
                                                      dbIconStar,
                                                      color: dbColorIcon,
                                                    ),
                                                  )),
                                                  TextSpan(
                                                      text: "4",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: dbWhite)),
                                                ]),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: dbBlackTrans,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
