import 'package:flutter/cupertino.dart';
import 'package:the_movie_app/presentation/shimmer/skeleton.dart';

class MovieListSkeleton extends StatelessWidget {
  const MovieListSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Skeleton(
          height: 150,
          width: 110,
        ),
        SizedBox(
          width: 15,
        ),
        Skeleton(
          height: 150,
          width: 110,
        ),
        SizedBox(
          width: 15,
        ),
        Skeleton(
          height: 150,
          width: 110,
        )
      ],
    );
  }
}
