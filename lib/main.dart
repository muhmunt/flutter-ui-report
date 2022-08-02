import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kbm_management/color_bloc.dart';
import 'package:kbm_management/screens/home_screen.dart';
// import 'package:kbm_management/ui/draft_page.dart';
import 'package:kbm_management/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider<ColorBloc>(
          builder: (context) => ColorBloc(),
          child: 
          // MainPage(),
          HomeScreen(),
        ),
      );
  }
}

// TEXT
// body: Center(
//             child: Container(
//                 color: Colors.lightBlue,
//                 width: 150,
//                 height: 50,
//                 child: Text(
//                   "Hari ini adalah hari minggu hari besok adalah hari? selasa",
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontStyle: FontStyle.italic,
//                       fontWeight: FontWeight.w700),
//                 ))),

// COLUM N ROW
// body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("text 1"),
//             Text("text 2"),
//             Text("text 3"),
//             Row(
//               children: <Widget>[
//                 Text("text 4"),
//                 Text("text 5"),
//                 Text("text 6"),
//               ],
//             )
//           ],
//         ),
