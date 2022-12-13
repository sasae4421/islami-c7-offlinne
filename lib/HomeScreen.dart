import 'package:flutter/material.dart';
import 'package:untitled6/MyTheme.dart';
import 'package:untitled6/home/hadeth/Hadeth_tab.dart';
import 'package:untitled6/home/quran/Quran_tab.dart';
import 'package:untitled6/home/radio/Radio_tab.dart';
import 'package:untitled6/home/sebha/Sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/default_bg.png')),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Islami',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600)),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: MyTheme.PrimaryColor,
                    label: 'Quran',
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_quran.png'))),
                BottomNavigationBarItem(
                    backgroundColor: MyTheme.PrimaryColor,
                    label: 'tasbeh',
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_sebha.png'))),
                BottomNavigationBarItem(
                    backgroundColor: MyTheme.PrimaryColor,
                    label: 'tasbeh',
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_hadeth.png'))),
                BottomNavigationBarItem(
                    backgroundColor: MyTheme.PrimaryColor,
                    label: 'tasbeh',
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_radio.png'))),
              ]),
          body: tabs[selectedIndex],
        ));
  }

  List tabs = [
    QranTab(),
    SebhaTab(),
    HadethTab(),
    RadioTab(),
  ];
}
