class VideoLesson {
  final String lessonKey; // Lesson Number (e.g., "1")
  final String titleKey; // Key from ARB file (e.g., "v_fire_1")
  final String
      videoUrl; // Path to the local asset (e.g., "assets/videos/fire_1.mp4")

  VideoLesson({
    required this.lessonKey,
    required this.titleKey,
    required this.videoUrl,
  });

  // --- FIRE VIDEOS ---
  static List<VideoLesson> getFireVideos() {
    return [
      VideoLesson(
        lessonKey: "1",
        titleKey: "v_fire_song",
        videoUrl: "assets/videos/fire_safty_song.mp4",
      ),
      VideoLesson(
        lessonKey: "2",
        titleKey: "v_fire_1",
        videoUrl: "assets/videos/fire_1.mp4",
      ),
      VideoLesson(
        lessonKey: "3",
        titleKey: "v_fire_2",
        videoUrl: "assets/videos/fire_2.mp4",
      ),
      VideoLesson(
        lessonKey: "4",
        titleKey: "v_fire_3",
        videoUrl: "assets/videos/fire_3.mp4",
      ),
      VideoLesson(
        lessonKey: "5",
        titleKey: "v_fire_4",
        videoUrl: "assets/videos/fire_4.mp4",
      ),
    ];
  }

  // --- EARTHQUAKE VIDEOS ---
  static List<VideoLesson> getEarthquakeVideos() {
    return [
      VideoLesson(
        lessonKey: "1",
        titleKey: "v_earth_song",
        videoUrl: "assets/videos/earthquake_safty_song.mp4",
      ),
      VideoLesson(
        lessonKey: "2",
        titleKey: "v_earth_1",
        videoUrl: "assets/videos/earthquake_1.mp4",
      ),
      VideoLesson(
        lessonKey: "3",
        titleKey: "v_earth_2",
        videoUrl: "assets/videos/earthquake_2.mp4",
      ),
      VideoLesson(
        lessonKey: "4",
        titleKey: "v_earth_3",
        videoUrl: "assets/videos/earthquake_3.mp4",
      ),
      VideoLesson(
        lessonKey: "5",
        titleKey: "v_earth_4",
        videoUrl: "assets/videos/earthquake_4.mp4",
      ),
    ];
  }

  // --- FLOOD VIDEOS ---
  static List<VideoLesson> getFloodVideos() {
    return [
      VideoLesson(
        lessonKey: "1",
        titleKey: "v_flood_1",
        videoUrl: "assets/videos/flood_safty.mp4",
      ),
      VideoLesson(
        lessonKey: "2",
        titleKey: "v_flood_2",
        videoUrl: "assets/videos/flood_2.mp4",
      ),
      VideoLesson(
        lessonKey: "3",
        titleKey: "v_flood_3",
        videoUrl: "assets/videos/flood_3.mp4",
      ),
      VideoLesson(
        lessonKey: "4",
        titleKey: "v_flood_4",
        videoUrl: "assets/videos/flood_4.mp4",
      ),
      VideoLesson(
        lessonKey: "5",
        titleKey: "v_flood_5",
        videoUrl: "assets/videos/flood_5.mp4",
      ),
    ];
  }
}
