import 'package:flutter/material.dart';
import 'package:momentum/Objects/user.dart';
//import '../chat/Whatsapp.dart';



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
                  //child:Whatsapp(),
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
    primaryColor: Color(0xFF143642),
    primaryColorLight: Color(0xFF26667d),
    primaryColorDark: Color(0xFF08161b),
    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.white,
  );
}
}