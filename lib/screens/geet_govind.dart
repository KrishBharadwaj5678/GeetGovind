import 'package:flutter/material.dart';
import 'package:geet_govind/constants/geet_govind_constant.dart';
import 'package:geet_govind/widgets/custom_app_bar.dart';
import 'package:geet_govind/widgets/custom_drawer.dart';

class GeetGovind extends StatefulWidget {
  const GeetGovind({super.key});

  @override
  State<GeetGovind> createState() => _GeetGovindState();
}

class _GeetGovindState extends State<GeetGovind> {
  int index = 0;

  void nextLyrics() {
    if (index == GeetGovindConstant.geetGovindLyrics.length - 1) return;
    setState(() {
      index++;
    });
  }

  void previousLyrics() {
    if (index == 0) return;
    setState(() {
      index--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "गीत गोविन्द"),
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(7),
        child: Center(
          child: Column(
            children: [
              // Main Image
              Image.asset(
                "assets/main/jaijagannath.png",
                width: MediaQuery.of(context).size.width * 0.8,
              ),

              // Lyrics Secion
              SizedBox(height: 28),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                child: Text(
                  key: ValueKey(index),
                  GeetGovindConstant.geetGovindLyrics[index],
                  style: GeetGovindConstant.geetGovindText,
                  textAlign: TextAlign.center,
                ),
              ),

              // Buttons Secion
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: GeetGovindConstant.buttonSize["width"],
                    height: GeetGovindConstant.buttonSize["height"],
                    child: ElevatedButton(
                      onPressed: () => previousLyrics(),
                      style: GeetGovindConstant.buttonStyle,
                      child: Text(
                        "Previous",
                        style: GeetGovindConstant.preTxtBtn,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: GeetGovindConstant.buttonSize["width"],
                    height: GeetGovindConstant.buttonSize["height"],
                    child: ElevatedButton(
                      onPressed: () => nextLyrics(),
                      style: GeetGovindConstant.buttonStyle,
                      child: Text("Next", style: GeetGovindConstant.nxtTxtBtn),
                    ),
                  ),
                ],
              ),

              // Page Count Section
              SizedBox(height: 32),
              Text(
                "Page ${index + 1} / ${GeetGovindConstant.geetGovindLyrics.length}",
                style: TextStyle(fontSize: 15.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
