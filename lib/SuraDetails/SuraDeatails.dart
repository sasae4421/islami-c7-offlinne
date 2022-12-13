import 'package:flutter/material.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  Widget build(BuildContext context) {
    SuraScreenDetailsArg arg =
        (ModalRoute.of(context)?.settings.arguments) as SuraScreenDetailsArg;
    print(arg.tittle);
    print(arg.index);

    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/default_bg.png')),
        ),
        child: Scaffold(
          appBar: AppBar(
              title: Text(
            arg.tittle,
            style: TextStyle(color: Colors.black),
          )),
        ));
  }
}

class SuraScreenDetailsArg {
  String tittle;
  int index;

  SuraScreenDetailsArg({required this.tittle, required this.index});
}
