import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../generated/app_localizations.dart';
import '../models/video_data.dart';

class VideoTutorialScreen extends StatelessWidget {
  final String disasterType;

  const VideoTutorialScreen({super.key, required this.disasterType});

  String _getTranslatedTitle(BuildContext context, String key) {
    final l10n = AppLocalizations.of(context)!;
    final Map<String, String> dictionary = {
      "v_fire_song": l10n.v_fire_song,
      "v_fire_1": l10n.v_fire_1,
      "v_fire_2": l10n.v_fire_2,
      "v_fire_3": l10n.v_fire_3,
      "v_fire_4": l10n.v_fire_4,
      "v_earth_song": l10n.v_earth_song,
      "v_earth_1": l10n.v_earth_1,
      "v_earth_2": l10n.v_earth_2,
      "v_earth_3": l10n.v_earth_3,
      "v_earth_4": l10n.v_earth_4,
      "v_flood_1": l10n.v_flood_1,
      "v_flood_2": l10n.v_flood_2,
      "v_flood_3": l10n.v_flood_3,
      "v_flood_4": l10n.v_flood_4,
      "v_flood_5": l10n.v_flood_5,
    };
    return dictionary[key] ?? key;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    Color themeColor = disasterType == 'Fire'
        ? Colors.orange.shade900
        : disasterType == 'Flood'
            ? Colors.blue.shade900
            : Colors.brown.shade800;

    String translatedDisaster = disasterType == 'Fire'
        ? l10n.fireSafety
        : disasterType == 'Flood'
            ? l10n.floodAlert
            : l10n.earthquake;

    // Use the logic to get the correct list from your model
    List<VideoLesson> videos = [];
    if (disasterType == 'Fire') {
      videos = VideoLesson.getFireVideos();
    } else if (disasterType == 'Flood') {
      videos = VideoLesson.getFloodVideos();
    } else if (disasterType == 'Earthquake') {
      videos = VideoLesson.getEarthquakeVideos();
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: themeColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          l10n.videoGuidesTitle(translatedDisaster),
          style: TextStyle(color: themeColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: videos.isEmpty
          ? Center(child: Text(l10n.cancel))
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: videos.length,
              itemBuilder: (context, index) {
                final video = videos[index];
                return _buildVideoCard(
                  context,
                  _getTranslatedTitle(context, video.titleKey),
                  video.videoUrl,
                  themeColor,
                  video.lessonKey,
                );
              },
            ),
    );
  }

  Widget _buildVideoCard(BuildContext context, String title, String assetPath,
      Color color, String lessonNumber) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: color.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: const Offset(0, 4))
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.play_circle_fill, color: color, size: 30),
        ),
        title: Text(
          l10n.lessonCount(lessonNumber),
          style: TextStyle(
              color: color, fontWeight: FontWeight.bold, fontSize: 12),
        ),
        subtitle: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
        ),
        trailing:
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {
          // Navigating to the Player class defined below
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  LocalVideoPlayer(assetPath: assetPath, title: title),
            ),
          );
        },
      ),
    );
  }
}

// --- THIS CLASS MUST BE OUTSIDE VideoTutorialScreen ---
class LocalVideoPlayer extends StatefulWidget {
  final String assetPath;
  final String title;

  const LocalVideoPlayer(
      {super.key, required this.assetPath, required this.title});

  @override
  State<LocalVideoPlayer> createState() => _LocalVideoPlayerState();
}

class _LocalVideoPlayerState extends State<LocalVideoPlayer> {
  late VideoPlayerController _controller;
  bool _isError = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.assetPath)
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
          _controller.play();
        }
      }).catchError((error) {
        if (mounted) {
          setState(() => _isError = true);
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: _isError
            ? const Text("Video Not Found",
                style: TextStyle(color: Colors.white))
            : _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        VideoPlayer(_controller),
                        _buildControls(),
                        VideoProgressIndicator(_controller,
                            allowScrubbing: true),
                      ],
                    ),
                  )
                : const CircularProgressIndicator(color: Colors.white),
      ),
    );
  }

  Widget _buildControls() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        });
      },
      child: Center(
        child: Icon(
          _controller.value.isPlaying
              ? Icons.pause_circle_filled
              : Icons.play_circle_filled,
          color: Colors.white.withValues(alpha: 0.7),
          size: 70,
        ),
      ),
    );
  }
}
