
import 'package:flutter/material.dart';
import 'package:momentum/Objects/user.dart';
import '../basic/Scrend.dart';
import '../chat/Whatsapp.dart';

class Profile extends StatelessWidget {
  final User user = User();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _buildDarkTheme(),
        home: Scaffold(
          resizeToAvoidBottomPadding: true,
          body: new Builder(
              builder: (context) =>
              new Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme
                              .of(context)
                              .primaryColor,
                          Theme
                              .of(context)
                              .primaryColorLight
                        ])),
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  //Sets the main padding all widgets has to adhere to.
                  child: ScndScrn(),
                ),
              )
          ),
        )
    );
  }

  ThemeData _buildDarkTheme() {
  final baseTheme = ThemeData(
    fontFamily: "Open Sans",
  );
  return baseTheme.copyWith(
    brightness: Brightness.dark,
    primaryColor: Color(0xFFffc901),
    primaryColorLight: Color(0xFFffd445),
    primaryColorDark: Color(0xFFe8b200),
    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.white,
  );
}
}
