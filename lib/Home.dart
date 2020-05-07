import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;

  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange.shade500,
        title: new Text(
          title,
          textDirection: TextDirection.rtl,
        ),
      ),

      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new CustomButton(),

            new CustomButton(),

            new CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        final snackBar = new SnackBar(content: new Text("First Snackbar"), duration: new Duration(seconds: 1),);
        Scaffold.of(context).showSnackBar(snackBar);
      },

      child: new Container(
        padding: new EdgeInsets.all(19.0),
        decoration: new BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: new BorderRadius.circular(15.5),
        ),

        child: new Text("First Button", style: new TextStyle(color: Colors.white),),
      ),

    );
  }
}
