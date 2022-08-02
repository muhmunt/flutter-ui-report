import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:kbm_management/color_bloc.dart';
import 'package:kbm_management/screens/line_chart_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.amber,
             onPressed: () {
               bloc.dispatch(ColorEvent.to_amber);
             }),
          SizedBox(width: 10),
          FloatingActionButton(
              backgroundColor: Colors.lightBlue,
               onPressed: () {
                 bloc.dispatch(ColorEvent.to_light_blue);
               }),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.grey,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          children: [
            // Container(
            //   margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       GestureDetector(
            //           onTap: () {
            //             print('Drawer Tapped');
            //           },
            //           child: SvgPicture.asset('assets/svg/drawer_icon.svg')),
            //       Container(
            //         height: 59,
            //         width: 59,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             image: DecorationImage(
            //                 image: AssetImage('assets/images/user_image.png'))),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Dashboard Harian KBM",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 2,
              margin: EdgeInsets.all(6),
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 199,
                width: 344,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.indigo.shade900),
                child: Stack(
                  children: [
                    Positioned(
                      child:
                          SvgPicture.asset("assets/svg/ellipse_top_pink.svg"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: SvgPicture.asset(
                          "assets/svg/ellipse_bottom_pink.svg"),
                    ),
                    Positioned(
                      left: 69,
                      top: 50,
                      child: Text("Top Up Hari Ini.",
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ),
                    Positioned(
                      left: 69,
                      top: 70,
                      child: Text("Rp 17.815.000,-",
                          style: GoogleFonts.inter(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.only(left: 16, right: 16),
                // height: 200,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Colors.indigo.shade300),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  SvgPicture.asset(
                                      "assets/svg/money_transfer_white.svg"),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "Yesterday",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Rp 60.450.000,-",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                          BlocBuilder<ColorBloc, Color>(
                            builder: (context, currentColor) =>
                              AnimatedContainer(
                                width: 180,
                                height: 180,
                                duration: Duration(milliseconds: 500),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: currentColor),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Icon(
                                      MdiIcons.arrowUpCircle,
                                      color: Colors.green.shade300,
                                      size: 45.0,
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Text(
                                      "GROWTH",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "+10%",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    )
                                  ],
                                )
                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Colors.pink.shade200),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Icon(
                                    Icons.lock_open,
                                    color: Colors.white,
                                    size: 50.0,
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "Jumlah Unlock",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "12.507",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                          Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Colors.pinkAccent),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Icon(
                                    Icons.attach_money,
                                    color: Colors.white,
                                    size: 45.0,
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "Nominal Unlock",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Rp 18.085.000",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.all(6),
              padding: EdgeInsets.only(left: 16, right: 16),
              child: LineChartScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
