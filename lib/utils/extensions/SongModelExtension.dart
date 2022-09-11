import 'package:on_audio_query/on_audio_query.dart';

extension ExtendedSongModel on SongModel {
  get additionalSongInfo {
    String artistInfo = artist.toString();
    String songTime = _millisToMinutesAndSeconds(duration);
    String artistName =
        artistInfo == "<unknown>" ? "Unknown Artist" : artistInfo;
    return "$artistName\t\t$songTime";
  }

  _millisToMinutesAndSeconds(millis) {
    int minutes = ((millis / 1000) / 60).toInt();
    int seconds = ((millis / 1000) % 60).toInt();
    return "$minutes:$seconds";
  }
}
