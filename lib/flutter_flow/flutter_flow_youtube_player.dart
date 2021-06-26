import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

const kYoutubeAspectRatio = 16 / 9;

class FlutterFlowYoutubePlayer extends StatefulWidget {
  const FlutterFlowYoutubePlayer({
    @required this.url,
    this.width,
    this.height,
    this.autoPlay = false,
    this.mute = false,
    this.looping = false,
    this.showControls = true,
    this.showFullScreen = false,
  });

  final String url;
  final double width;
  final double height;
  final bool autoPlay;
  final bool mute;
  final bool looping;
  final bool showControls;
  final bool showFullScreen;

  @override
  State<FlutterFlowYoutubePlayer> createState() =>
      _FlutterFlowYoutubePlayerState();
}

class _FlutterFlowYoutubePlayerState extends State<FlutterFlowYoutubePlayer> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _controller?.close();
    super.dispose();
  }

  double get width => widget.width == null || widget.width >= double.infinity
      ? MediaQuery.of(context).size.width
      : widget.width;

  double get height => widget.height == null || widget.height >= double.infinity
      ? (width != null ? width / kYoutubeAspectRatio : null)
      : widget.height;

  void initializePlayer() {
    if (!mounted) {
      return;
    }
    final videoId = convertUrlToId(widget.url);
    if (videoId == null) {
      return;
    }
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      params: YoutubePlayerParams(
        autoPlay: widget.autoPlay,
        mute: widget.mute,
        loop: widget.looping,
        showControls: widget.showControls,
        showFullscreenButton: widget.showFullScreen,
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => _controller != null
      ? YoutubePlayerControllerProvider(
          controller: _controller,
          child: youtubeBox(const YoutubePlayerIFrame()),
        )
      : youtubeBox(Container(color: Colors.transparent));

  Widget youtubeBox(Widget child) => FittedBox(
        fit: BoxFit.cover,
        child: Container(
          height: height,
          width: width,
          child: child,
        ),
      );
}

String convertUrlToId(String url, {bool trimWhitespaces = true}) {
  assert(url?.isNotEmpty ?? false, 'Url cannot be empty');
  if (!url.contains("http") && (url.length == 11)) return url;
  if (trimWhitespaces) url = url.trim();
  for (final regex in [
    RegExp(
      r"^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11}).*$",
    ),
    RegExp(
      r"^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11}).*$",
    ),
    RegExp(r"^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11}).*$")
  ]) {
    Match match = regex.firstMatch(url);
    if (match != null && match.groupCount >= 1) return match.group(1);
  }
  return null;
}
