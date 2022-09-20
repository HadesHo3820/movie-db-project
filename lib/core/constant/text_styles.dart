import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/keys.dart';

class TextStyles {
  TextStyles._();

  static Map<String, TextStyle> appStyle = {
    TextStyleKeys.sectionTitle: const TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.white),
  };

  static Map<String, TextStyle> splashScreenStyles = {
    TextStyleKeys.copyrightTitle: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.white)
  };

  static Map<String, TextStyle> loginScreenStyles = {
    TextStyleKeys.textfieldLabel:
        const TextStyle(fontSize: 15, color: AppColors.secondaryGrey),
    TextStyleKeys.buttonLabel: const TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.white),
    TextStyleKeys.dividerLabel:
        const TextStyle(fontSize: 15, color: AppColors.white)
  };

  static Map<String, TextStyle> navBarStyles = {
    TextStyleKeys.navLabelSelected:
        const TextStyle(color: AppColors.tertiaryGrey, fontSize: 15),
    TextStyleKeys.navLabelUnselected:
        const TextStyle(color: AppColors.secondaryGrey, fontSize: 15)
  };

  static Map<String, TextStyle> homeScreenStyle = {
    TextStyleKeys.itemListLabel: const TextStyle(
        fontSize: 15, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.searchHintText: const TextStyle(
        fontSize: 13,
        color: AppColors.secondaryGrey,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic)
  };

  static Map<String, TextStyle> detailScreenStyle = {
    TextStyleKeys.movieTitle: const TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.white),
    TextStyleKeys.genreTitle:
        const TextStyle(fontSize: 12, color: AppColors.tertiaryGrey),
    TextStyleKeys.durationTitle: const TextStyle(
        fontSize: 12,
        color: AppColors.tertiaryGrey,
        fontWeight: FontWeight.bold),
    TextStyleKeys.voteTitle:
        const TextStyle(fontSize: 12, color: AppColors.white),
    TextStyleKeys.voteAverage: const TextStyle(
        fontSize: 18, color: AppColors.black, fontWeight: FontWeight.bold),
    TextStyleKeys.overviewContent: const TextStyle(
        fontSize: 15,
        color: AppColors.secondaryGrey,
        fontWeight: FontWeight.bold),
    TextStyleKeys.castAndCrewName: const TextStyle(
        fontSize: 12, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.castAndCrewCharacter:
        const TextStyle(fontSize: 10, color: AppColors.tertiaryGrey),
  };

  static Map<String, TextStyle> castDetailScreenStyle = {
    TextStyleKeys.castName: const TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: AppColors.white),
    TextStyleKeys.labelTitle: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.white),
    TextStyleKeys.labelValue:
        const TextStyle(fontSize: 14, color: AppColors.tertiaryGrey),
    TextStyleKeys.overviewContent: const TextStyle(
      fontSize: 15,
      color: AppColors.secondaryGrey,
    ),
    TextStyleKeys.movieName: const TextStyle(
        fontSize: 14, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.movieDate:
        const TextStyle(fontSize: 14, color: AppColors.white),
  };

  static Map<String, TextStyle> searchScreenStyle = {
    TextStyleKeys.searchHintText: const TextStyle(
        fontSize: 14,
        color: AppColors.tertiaryGrey,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic),
    TextStyleKeys.welcomeTitle: const TextStyle(
        fontSize: 30, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.introTitle: const TextStyle(
        fontSize: 18, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.selectedSearchType: const TextStyle(
        fontSize: 14, color: AppColors.black, fontWeight: FontWeight.bold),
    TextStyleKeys.unselectedSearchType: const TextStyle(
        fontSize: 14, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.totalResult: const TextStyle(
        fontSize: 14, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.itemName: const TextStyle(
        fontSize: 20, color: AppColors.black, fontWeight: FontWeight.bold),
    TextStyleKeys.itemDate:
        const TextStyle(fontSize: 14, color: AppColors.secondaryGrey),
    TextStyleKeys.itemOverview: const TextStyle(
        fontSize: 10, color: AppColors.black, overflow: TextOverflow.fade),
    TextStyleKeys.itemPopularity:
        const TextStyle(fontSize: 15, color: AppColors.black),
    TextStyleKeys.textFieldText: const TextStyle(color: AppColors.white),
  };
}
