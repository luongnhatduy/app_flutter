import 'package:app_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'module/home/home.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Home(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: null),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/heart.svg",color: Colors.blueGrey,),
          onPressed: null,
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",color: Colors.blueGrey,),
          onPressed: null,
        ),
        SizedBox(width: kDefaultPaddin / 2,)
      ],
    );
  }
}
