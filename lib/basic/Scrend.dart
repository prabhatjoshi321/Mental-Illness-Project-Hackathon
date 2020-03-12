import 'package:flutter/material.dart';
import '../chat/Whatsapp.dart';



class ScndScrn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      theme: _buildDarkTheme(),
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
  "Please enter your age",
  style: TextStyle(
    fontSize: 14.0,
    height: 1.5 //You can set your custom height here
  )
),
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your age';
              }
              return null;
            },
          ),
          Text(
  "Please enter your gender",
  style: TextStyle(
    fontSize: 14.0,
    height: 1.5 //You can set your custom height here
  )
),
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your gender';
              }
              return null;
            },
          ),
          Text(
  "Please enter your interests",
  style: TextStyle(
    fontSize: 14.0,
    height: 1.5 //You can set your custom height here
  )
),
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your interests';
              }
              return null;
            },
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Whatsapp()),
                      );
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
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
