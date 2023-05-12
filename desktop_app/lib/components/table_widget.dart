import 'package:flutter/material.dart';

Widget buildTableCell(String value ,style,)  {
    return TableCell(
      child: Padding(
        padding: EdgeInsets.only(left: 27,right: 100, top: 25, bottom: 25),
        child: Text(value ,style: style),
      ),
    );
  }
