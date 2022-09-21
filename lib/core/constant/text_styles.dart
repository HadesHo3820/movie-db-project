import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  TextStyles._();

  static Map<String, TextStyle> appStyle = {
    TextStyleKeys.sectionTitle: TextStyle(
        fontSize: 15.sp, fontWeight: FontWeight.bold, color: AppColors.white),
  };

  static Map<String, TextStyle> splashScreenStyles = {
    TextStyleKeys.copyrightTitle: TextStyle(
        fontSize: 16.sp, fontWeight: FontWeight.bold, color: AppColors.white)
  };

  static Map<String, TextStyle> loginScreenStyles = {
    TextStyleKeys.textfieldLabel:
        TextStyle(fontSize: 15.sp, color: AppColors.secondaryGrey),
    TextStyleKeys.buttonLabel: TextStyle(
        fontSize: 18.sp, fontWeight: FontWeight.bold, color: AppColors.white),
    TextStyleKeys.dividerLabel:
        TextStyle(fontSize: 15.sp, color: AppColors.white)
  };

  static Map<String, TextStyle> navBarStyles = {
    TextStyleKeys.navLabelSelected:
        TextStyle(color: AppColors.white, fontSize: 13.sp),
    TextStyleKeys.navLabelUnselected:
        TextStyle(color: AppColors.secondaryGrey, fontSize: 11.sp)
  };

  static Map<String, TextStyle> homeScreenStyle = {
    TextStyleKeys.itemListLabel: TextStyle(
        fontSize: 15.sp, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.searchHintText: TextStyle(
        fontSize: 12.sp,
        color: AppColors.secondaryGrey,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic)
  };

  static Map<String, TextStyle> movieDetailScreenStyle = {
    TextStyleKeys.movieTitle: TextStyle(
        fontSize: 18.sp, fontWeight: FontWeight.bold, color: AppColors.white),
    TextStyleKeys.genreTitle:
        TextStyle(fontSize: 12.sp, color: AppColors.tertiaryGrey),
    TextStyleKeys.durationTitle: TextStyle(
        fontSize: 12.sp, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.voteTitle: TextStyle(fontSize: 12.sp, color: AppColors.white),
    TextStyleKeys.voteAverage: TextStyle(
        fontSize: 18.sp, color: AppColors.black, fontWeight: FontWeight.bold),
    TextStyleKeys.overviewContent: TextStyle(
        fontSize: 15.sp,
        color: AppColors.secondaryGrey,
        fontWeight: FontWeight.bold),
    TextStyleKeys.castAndCrewName: TextStyle(
        fontSize: 12.sp, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.castAndCrewCharacter:
        TextStyle(fontSize: 10.sp, color: AppColors.tertiaryGrey),
  };

  static Map<String, TextStyle> castDetailScreenStyle = {
    TextStyleKeys.castName: TextStyle(
        fontSize: 18.sp, fontWeight: FontWeight.bold, color: AppColors.white),
    TextStyleKeys.labelTitle: TextStyle(
        fontSize: 13.sp, fontWeight: FontWeight.bold, color: AppColors.white),
    TextStyleKeys.labelValue:
        TextStyle(fontSize: 13.sp, color: AppColors.tertiaryGrey),
    TextStyleKeys.overviewContent: TextStyle(
      fontSize: 15.sp,
      color: AppColors.secondaryGrey,
    ),
    TextStyleKeys.movieName: TextStyle(
        fontSize: 14.sp, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.movieDate: TextStyle(fontSize: 14.sp, color: AppColors.white),
  };

  static Map<String, TextStyle> searchScreenStyle = {
    TextStyleKeys.searchHintText: TextStyle(
        fontSize: 14.sp,
        color: AppColors.tertiaryGrey,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic),
    TextStyleKeys.welcomeTitle: TextStyle(
        fontSize: 30.sp, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.introTitle: TextStyle(
        fontSize: 18.sp, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.selectedSearchType: TextStyle(
        fontSize: 14.sp, color: AppColors.black, fontWeight: FontWeight.bold),
    TextStyleKeys.unselectedSearchType: TextStyle(
        fontSize: 14.sp, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.totalResult: TextStyle(
        fontSize: 14.sp, color: AppColors.white, fontWeight: FontWeight.bold),
    TextStyleKeys.itemName: TextStyle(
        fontSize: 18.sp, color: AppColors.black, fontWeight: FontWeight.bold),
    TextStyleKeys.itemDate:
        TextStyle(fontSize: 14.sp, color: AppColors.secondaryGrey),
    TextStyleKeys.itemOverview: TextStyle(
        fontSize: 10.sp, color: AppColors.black, overflow: TextOverflow.fade),
    TextStyleKeys.itemPopularity:
        TextStyle(fontSize: 15.sp, color: AppColors.black),
    TextStyleKeys.textFieldText: const TextStyle(color: AppColors.white),
  };
}
