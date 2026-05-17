class VideoModel {
  final String title;
  final String assetPath;

  VideoModel({required this.title, required this.assetPath});
}

final Map<String, List<VideoModel>> disasterVideos = {
  "Fire": [
    VideoModel(
        title: "Fire Safety Song",
        assetPath: "assets/videos/fire_safty_song.mp4"),
    VideoModel(
        title: "Home Fire Survival", assetPath: "assets/videos/fire_1.mp4"),
    VideoModel(
        title: "Using Extinguishers", assetPath: "assets/videos/fire_2.mp4"),
    VideoModel(
        title: "Evacuation Drill", assetPath: "assets/videos/fire_3.mp4"),
    VideoModel(title: "Kitchen Safety", assetPath: "assets/videos/fire_4.mp4"),
  ],
  "Earthquake": [
    VideoModel(
        title: "Earthquake Song",
        assetPath: "assets/videos/earthquake_safty_song.mp4"),
    VideoModel(
        title: "Drop, Cover, Hold On",
        assetPath: "assets/videos/earthquake_1.mp4"),
    VideoModel(
        title: "Indoor Safety", assetPath: "assets/videos/earthquake_2.mp4"),
    VideoModel(
        title: "Building Resilience",
        assetPath: "assets/videos/earthquake_3.mp4"),
    VideoModel(
        title: "Survival Kit", assetPath: "assets/videos/earthquake_4.mp4"),
  ],
  "Flood": [
    VideoModel(
        title: "Flood Survival Guide",
        assetPath: "assets/videos/flood_safty.mp4"),
    VideoModel(
        title: "Turn Around Don't Drown",
        assetPath: "assets/videos/flood_2.mp4"),
    VideoModel(title: "Water Safety", assetPath: "assets/videos/flood_3.mp4"),
    VideoModel(
        title: "Protecting Your Home", assetPath: "assets/videos/flood_4.mp4"),
    VideoModel(
        title: "Post-Flood Health", assetPath: "assets/videos/flood_5.mp4"),
  ],
};
