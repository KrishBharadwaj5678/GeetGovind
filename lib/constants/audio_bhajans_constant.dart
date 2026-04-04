import 'package:flutter/material.dart';

class AudioBhajansConstant {
  static List<Map<String, String>> bhajans = [
    {
      "id": "01",
      "name": "Ahe Nila Saila",
      "artist": "Indresh Upadhyay",
      "cover": "assets/cover/AheNilaSaila.jpg",
      "audio": "assets/audio/AheNilaSaila.mp3",
    },
    {
      "id": "02",
      "name": "Geet Govind",
      "artist": "Indresh Upadhyay",
      "cover": "assets/cover/GeetGovind.jpg",
      "audio": "assets/audio/GeetGovind.mp3",
    },
    {
      "id": "03",
      "name": "Chaka Nain",
      "artist": "Indresh Upadhyay",
      "cover": "assets/cover/ChakaNain.jpg",
      "audio": "assets/audio/ChakaNain.mp3",
    },
    {
      "id": "04",
      "name": "Naagar Nandji",
      "artist": "Aditya Gadhvi",
      "cover": "assets/cover/NaagarNandji.jpg",
      "audio": "assets/audio/NaagarNandji.mp3",
    },
    {
      "id": "05",
      "name": "Raksha Stotra",
      "artist": "Kalia Beats",
      "cover": "assets/cover/Rakshamam.jpg",
      "audio": "assets/audio/Rakshamam.mp3",
    },
    {
      "id": "06",
      "name": "Ashtakam",
      "artist": "Madhavas Band",
      "cover": "assets/cover/Ashtakam.jpg",
      "audio": "assets/audio/Ashtakam.mp3",
    },
    {
      "id": "07",
      "name": "Kheencho Re",
      "artist": "Madhavas Band",
      "cover": "assets/cover/Kheencho.jpg",
      "audio": "assets/audio/Kheencho.mp3",
    },
    {
      "id": "08",
      "name": "Jagannath Ka",
      "artist": "Suresh Wadkar",
      "cover": "assets/cover/DhamJagannath.jpg",
      "audio": "assets/audio/DhamJagannath.mp3",
    },
    {
      "id": "09",
      "name": "Jagannath Bol",
      "artist": "Tripti Shakya",
      "cover": "assets/cover/JagannathBol.jpg",
      "audio": "assets/audio/JagannathBol.mp3",
    },
  ];

  static EdgeInsets audioContainerPadding = EdgeInsets.symmetric(
    vertical: 13,
    horizontal: 14,
  );
  static EdgeInsets audioContainerMargin = EdgeInsets.only(bottom: 15);
  static BoxDecoration audioContainerDecoration = BoxDecoration(
    color: Color.fromRGBO(227, 187, 41, 1).withOpacity(0.25),
    borderRadius: BorderRadius.circular(10),
  );

  static Map<String, double> coverImage = {"width": 60, "height": 65};

  static TextStyle musicTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static TextStyle musicArtist = TextStyle(fontSize: 12.3);
}
