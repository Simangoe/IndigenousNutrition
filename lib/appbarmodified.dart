import 'package:flutter/cupertino.dart';

Widget appbarmodified(barwidth, wid1, wid2, wid3) {
  return Positioned(
      top: 0,
      child: Container(
        width: barwidth,
        height: 65,
        color: const Color.fromRGBO(195, 213, 175, 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [wid1, wid2, wid3]),
      ));
}

Widget appbarpdf(barwidth, wid1, wid2, wid3) {
  return Positioned(
      top: 50,
      child: Container(
        width: barwidth,
        height: 65,
        color: const Color.fromRGBO(195, 213, 175, 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [wid1, wid2, wid3]),
      ));
}

Widget blank() {
  return Container();
}
