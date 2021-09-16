
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Tools{
  Widget getImage(String link, {BoxFit? fit}) {
    if (link.contains('http://') || link.contains('https://')) {
      return Image.network(
        link,
        fit: fit,
      );
    }
    return Image.asset(
      "assets/images/$link",
      fit: fit,
    );
  }

  String getIcon(link) {
    return "assets/icons/$link";
  }
}