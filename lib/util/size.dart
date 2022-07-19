import 'package:flutter/cupertino.dart';

double getScreenheight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getScreenwidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
