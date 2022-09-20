import 'package:the_movie_app/core/enums.dart';

class ApiConstant {
  static const String apiKey = "f2c63c66bc3037a19906e54072e88341";
  static const String baseImageApiUrl = "https://image.tmdb.org/t/p/";
  static const String baseApiUrl = "https://api.themoviedb.org/3";
  static const String baseYoutubeUrl = "https://youtu.be/";
  static const String userName = "patricklagger";
  static const String password = "31121995";

  //authentication
  static const String newRequestToken = "/authentication/token/new";
  static const String validateWithLoign =
      "/authentication/token/validate_with_login";
  static const String createSession = "/authentication/session/new";

  //
  static const String popular = "/movie/popular";
  static const String upcoming = "/movie/upcoming";
  static const String nowPlaying = "/movie/now_playing";
  static const String topRated = "/movie/top_rated";

  static const String apiKeyQueryParam = "api_key=";
  static const String sessionIdQueryParam = "session_id=";
  static const String pageQueryParam = "page=";

  static String getDataUrl(String apiLink, String? sessionId) =>
      "$apiLink?$apiKeyQueryParam$apiKey&$sessionIdQueryParam$sessionId";

  static String getSearchUrl(String apiLink, String? sessionId) =>
      "$apiLink&$apiKeyQueryParam$apiKey&$sessionIdQueryParam$sessionId";

  static String postDataUrl(String apiLink) =>
      "$apiLink?$apiKeyQueryParam$apiKey";

  static const apiTypeLink = {
    'trending': '/trending/movie/week',
    'popular': '/movie/popular',
    'upcoming': '/movie/upcoming',
    'nowplaying': '/movie/now_playing',
    'toprate': '/movie/top_rated'
  };

  static String imageBackdropApi(String imagePath, BackdropSizes enumBackdrop) {
    String backdropType = "";
    switch (enumBackdrop) {
      case BackdropSizes.w300:
        backdropType = "w300";
        break;
      case BackdropSizes.w780:
        backdropType = "w780";
        break;
      case BackdropSizes.w1280:
        backdropType = "w1280";
        break;
      case BackdropSizes.original:
        backdropType = "original";
        break;
    }
    return baseImageApiUrl + backdropType + imagePath;
  }

  static String imagePosterApi(String imagePath, PosterSizes enumPoster) {
    String backdropType = "";
    switch (enumPoster) {
      case PosterSizes.w92:
        backdropType = "w92";
        break;
      case PosterSizes.w154:
        backdropType = "w154";
        break;
      case PosterSizes.w185:
        backdropType = "w185";
        break;
      case PosterSizes.w342:
        backdropType = "w342";
        break;
      case PosterSizes.w500:
        backdropType = "w500";
        break;
      case PosterSizes.w780:
        backdropType = "w780";
        break;
      case PosterSizes.original:
        backdropType = "original";
        break;
    }
    return baseImageApiUrl + backdropType + imagePath;
  }

  static String imageProfileApi(String imagePath, ProfileSizes enumSizes) {
    String profileImageType = "";
    switch (enumSizes) {
      case ProfileSizes.w45:
        profileImageType = "w45";
        break;
      case ProfileSizes.w92:
        profileImageType = "w92";
        break;
      case ProfileSizes.w185:
        profileImageType = "w185";
        break;
      case ProfileSizes.w300:
        profileImageType = "w300";
        break;
    }
    return baseImageApiUrl + profileImageType + imagePath;
  }

  static String getYtbThumbnailImage(String videoId) =>
      "https://img.youtube.com/vi/$videoId/0.jpg";
}

class RouteNames {
  static const String onStart = "/";
  static const String loginScreen = "/login";
  static const String homeScreen = "/home";
  static const String navigationScreen = "/navigation";
  static const String detailScreen = "/detail";
  static const String castScreen = "/cast";
  static const String castDetailScreen = "/cast-detail";
  static const String searchScreen = "/search";
  static const String trailerScreen = "/trailer";
}

class SharedPreferenceKey {
  static const String requestTokeyKey = "REQUEST-TOKEN";
}
