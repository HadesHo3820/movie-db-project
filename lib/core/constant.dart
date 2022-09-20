import 'package:flutter/material.dart';
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

class AppColors {
  static const Color darkBlue = Color(0xff031D33);
  static const Color secondaryDarkBlue = Color(0xff3E5365);
  static const Color orange = Color(0xffE77723);
  static const Color grey = Color(0xff767676);
  static const Color primaryGrey = Color(0xff606060);
  static const Color secondaryGrey = Color(0xffA8A8A8);
  static const Color tertiaryGrey = Color(0xffE6E6E6);
  static const Color lightBlue = Color(0xff01b4e4);
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

class SplashScreenConstant {
  static const String companyName = "Execution Lab";
  static const String copyright = "CopyRight 2022";
}

class LoginScreenConstant {
  static const usernameLabel = "Username";
  static const usenameHintText = "Enter your usename";
  static const passwordLabel = "Password";
  static const passwordHintText = "Enter your password";
  static const loginButtonLabel = "Sign In";
  static const otherLoginMethodLabel = "Or continue with";
}

class HomeScreenText {
  static const searchTextFieldHintText =
      "Search for a movie, tv show, person, ...";
  static const trendingLabel = "Trending";
  static const popularLabel = "Popular";
  static const topRateLabel = "Top rate";
  static const playingMovieLabel = "Playing movie";
  static const upcomingMovieLabel = "Upcoming movie";
}

class DetailScreenText {
  static const String overviewLabel = "Overview";
  static const String trailerLabel = "Trailer";
  static const String posterLabel = "Poster";
  static const String castLabel = "Cast";
  static const String filmCrewLabel = "Film Crew";
}

class CastDetailScreenText {
  static const String birthdayTitle = "Birthday:";
  static const String overviewTitle = "Overview:";
  static const String placeOfBirthTitle = "Place of birth:";
  static const String knowForTitle = "Known for:";
  static const String popularityTitle = "Popularity:";
  static const String careerTitle = "Career:";
}

class SearchScreenText {
  static const textfieldHintText = "Search for a movie, tv shows, person,...";
  static const welcomeText = "Welcome.";
  static const introductionText =
      "Millions of movies. TV shows and people to discover. Explore now.";
  static const searchResultLabel = "Search Result";
  static const tvShowType = "TV Shows";
  static const movieType = "Movies";
  static const peopleType = "People";
}
