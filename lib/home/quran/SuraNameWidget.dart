import 'package:flutter/material.dart';
import 'package:untitled6/SuraDetails/SuraDeatails.dart';

class SuraNameWidget extends StatelessWidget {
  String title;
  int index;

  SuraNameWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraScreenDetailsArg(tittle: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
