import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../constants/app_videos.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer(VideoPlayerController controller, {super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController _controller;


  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(AppVideos.mainVideo)
      ..initialize().then((_) {
        _controller.setVolume(0);
        _controller.play();
        setState(() {});
      });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      )
          : const CircularProgressIndicator(),
    );
  }
}