import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/core/utils/navigation_util.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/search_provider.dart';
import 'package:the_movie_app/application/search/search_event.dart';

class SearchAppBar extends HookConsumerWidget {
  const SearchAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool canPop = NavigationUtil.canPop(context);
    final textEditingController = useTextEditingController();
    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
      color: AppColors.darkBlue,
      child: Row(
        children: [
          canPop
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                )
              : const SizedBox.shrink(),
          Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: AppColors.secondaryDarkBlue,
              ),
              child: TextField(
                controller: textEditingController,
                autofocus: true,
                cursorColor: AppColors.white,
                style:
                    TextStyles.searchScreenStyle[TextStyleKeys.textFieldText],
                onSubmitted: (value) {
                  if (textEditingController.text.trim().isNotEmpty) {
                    ref.read(searchProvider.notifier).mapEventToState(
                        event: RequestSearch(
                            searchValue: textEditingController.text.trim()));
                  }
                },
                decoration: InputDecoration(
                  hintText: SearchScreenText.textfieldHintText,
                  hintStyle: TextStyles
                      .searchScreenStyle[TextStyleKeys.searchHintText],
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (textEditingController.text.trim().isNotEmpty) {
                        ref.read(searchProvider.notifier).mapEventToState(
                            event: RequestSearch(
                                searchValue:
                                    textEditingController.text.trim()));
                      }
                      FocusNode().unfocus();
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
