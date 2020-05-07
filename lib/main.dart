import 'package:flutter/material.dart';

import 'Home.dart';

void main(){

  var title = "Gestures";

  runApp(
    new MaterialApp(
      title: title,
      home: new Home(title: title,),
    )
  );

}