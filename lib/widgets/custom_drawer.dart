import 'package:flutter/material.dart';
import 'package:geet_govind/constants/common_constants.dart';
import 'package:geet_govind/screens/audio_bhajans.dart';
import 'package:geet_govind/screens/gallery.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CommonConstants.appBarBackgroundColor,
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset("assets/main/jaijagannath.png")),
          ListTile(
            title: Text("Home", style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(Icons.home, color: Colors.black),
          ),
          ListTile(
            title: Text("Gallery", style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Gallery()),
              );
            },
            leading: Icon(Icons.photo, color: Colors.black),
          ),
          ListTile(
            title: Text("Bhajans", style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AudioBhajans()),
              );
            },
            leading: Icon(Icons.music_note_rounded, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
