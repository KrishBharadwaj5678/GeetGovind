import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:geet_govind/constants/audio_bhajans_constant.dart';
import 'package:geet_govind/widgets/custom_app_bar.dart';
import 'package:waved_audio_player/waved_audio_player.dart';

class AudioBhajans extends StatefulWidget {
  const AudioBhajans({super.key});

  @override
  State<AudioBhajans> createState() => _AudioBhajansState();
}

class _AudioBhajansState extends State<AudioBhajans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "भजन"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: ListView.builder(
            itemCount: AudioBhajansConstant.bhajans.length,
            itemBuilder: (context, index) {
              final bhajan = AudioBhajansConstant.bhajans[index];
              return Container(
                padding: AudioBhajansConstant.audioContainerPadding,
                margin: AudioBhajansConstant.audioContainerMargin,
                decoration: AudioBhajansConstant.audioContainerDecoration,
                child: Row(
                  children: [
                    // Music Cover
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        bhajan["cover"]!,
                        width: AudioBhajansConstant.coverImage["width"],
                        height: AudioBhajansConstant.coverImage["height"],
                        fit: BoxFit.fill,
                      ),
                    ),

                    // Music Title and Artist
                    SizedBox(width: 11),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 2,
                        children: [
                          Text(
                            bhajan["name"]!,
                            style: AudioBhajansConstant.musicTitle,
                          ),
                          Text(
                            bhajan["artist"]!,
                            style: AudioBhajansConstant.musicArtist,
                          ),
                        ],
                      ),
                    ),

                    // Music Player
                    SizedBox(),
                    WavedAudioPlayer(
                      source: AssetSource(bhajan["audio"]!),
                      iconColor: Colors.white,
                      iconBackgoundColor: Colors.green,
                      playedColor: Colors.green,
                      unplayedColor: Colors.grey[500]!,
                      waveWidth: 90,
                      barWidth: 3,
                      buttonSize: 40,
                      showTiming: true,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
